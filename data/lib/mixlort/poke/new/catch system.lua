local topquest = 1
function doBrokesCount(cid, str, ball)   --alterado v1.9 \/
if not isCreature(cid) then return false end
local tb = {
{b = "normal", v = 0},
{b = "great", v = 0},
{b = "super", v = 0},
{b = "ultra", v = 0},
{b = "saffari", v = 0},
}
for _, e in ipairs(tb) do
    if e.b == ball then
       e.v = 1
       break
    end
end
local string = getPlayerStorageStringValue(cid, str)
local t = "normal = (.-), great = (.-), super = (.-), ultra = (.-), saffari = (.-);"
local t2 = ""

for n, g, s, u, s2 in string:gmatch(t) do
    t2 = "normal = "..(n+tb[1].v)..", great = "..(g+tb[2].v)..", super = "..(s+tb[3].v)..", ultra = "..(u+tb[4].v)..", saffari = "..(s2+tb[5].v)..";"    
end
return setPlayerStorageStringValue(cid, str, string:gsub(t, t2))
end

function sendBrokesMsg(cid, str, ball)
if not isCreature(cid) then return false end
local string = getPlayerStorageStringValue(cid, str)
local t = "normal = (.-), great = (.-), super = (.-), ultra = (.-), saffari = (.-);"
local msg = {}
table.insert(msg, "You have wasted: ")

for n, g, s, u in string:gmatch(t) do
    if tonumber(n) and tonumber(n) > 0 then 
       table.insert(msg, tostring(n).." Poke ball".. (tonumber(n) > 1 and "s" or "")) 
    end
    if tonumber(g) and tonumber(g) > 0 then 
       table.insert(msg, (#msg > 1 and ", " or "").. tostring(g).." Great ball".. (tonumber(g) > 1 and "s" or "")) 
    end
    if tonumber(s) and tonumber(s) > 0 then 
       table.insert(msg, (#msg > 1 and ", " or "").. tostring(s).." Super ball".. (tonumber(s) > 1 and "s" or "")) 
    end
    if tonumber(u) and tonumber(u) > 0 then 
       table.insert(msg, (#msg > 1 and ", " or "").. tostring(u).." Ultra ball".. (tonumber(u) > 1 and "s" or "")) 
    end
    if tonumber(s2) and tonumber(s2) > 0 then 
       table.insert(msg, (#msg > 1 and ", " or "").. tostring(s2).." Saffari ball".. (tonumber(s2) > 1 and "s" or "")) 
    end
end
if #msg == 1 then
   return true
end
if string.sub(msg[#msg], 1, 1) == "," then
   msg[#msg] = " and".. string.sub(msg[#msg], 2, #msg[#msg])
end
table.insert(msg, " trying to catch it.")
sendMsgToPlayer(cid, 27, table.concat(msg))
end                                                             --alterado v1.9 /\
--------------------------------------------------------------------------------

function doSendPokeBall(cid, catchinfo, showmsg, fullmsg, typeee) --Edited brokes count system
    if not isOnline(cid) then return true end
    if isNumber(cid) then cid = Creature(cid) end

	local name = catchinfo.name
	local pos = catchinfo.topos
	local topos = {}
		topos.x = pos.x
		topos.y = pos.y
		topos.z = pos.z
	local newid = catchinfo.newid
	local catch = catchinfo.catch
	local fail = catchinfo.fail
	local rate = catchinfo.rate
	local basechance = catchinfo.chance
	
	if pokes[getPlayerStorageStringValue(cid, 854788)] and name == getPlayerStorageStringValue(cid, 854788) then 
	   rate = 15
    end

	local corpse = getTopCorpse(topos).uid

	if not isCreature(cid) then
		doSendMagicEffect(topos, CONST_ME_POFF)
	return true
	end

	doItemSetAttribute(corpse, "catching", 1)

	local levelChance = 2 * 0.02

	local totalChance = math.ceil(basechance * (1.2 + levelChance))
	local thisChance = math.random(0, totalChance)
	local myChance = math.random(0, totalChance)
	local chance = (1 * rate + 1) / totalChance
		chance = doMathDecimal(chance * 100)

		
		local quero_esses = {4,3}
	if rate >= totalChance then
		local status = {}
		      status.gender = quero_esses[math.random(1, #quero_esses)]
		      status.happy = 160

		doRemoveItem(corpse, 1)
		doSendMagicEffect(topos, catch)
		addEvent(doCapturePokemon, 3000, cid:getId(), name, newid, status, typeee)  
	return true
	end


	if totalChance <= 1 then totalChance = 1 end

	local myChances = {}
	local catchChances = {}


	for cC = 0, totalChance do
		table.insert(catchChances, cC)
	end

	for mM = 1, rate do
		local element = catchChances[math.random(1, #catchChances)]
		table.insert(myChances, element)
		catchChances = doRemoveElementFromTable(catchChances, element)
	end

	local quero_esses = {4,3}
	local status = {}
	      status.gender =  quero_esses[math.random(1, #quero_esses)]
	      status.happy = 70

	doRemoveItem(corpse, 1)

	local doCatch = false

	for check = 1, #myChances do
		if thisChance == myChances[check] then
			doCatch = true
		end
	end

	if doCatch then
		doSendMagicEffect(topos, catch)
		addEvent(doCapturePokemon, 3000, cid:getId(), name, newid, status, typeee) 
	else
		addEvent(doNotCapturePokemon, 3000, cid:getId(), name, typeee) 
		doSendMagicEffect(topos, fail)
	end
end

function doCapturePokemon(cid, poke, ballid, status, typeee)  
	if not isCreature(cid) then return true end
    if not isOnline(cid) then return true end
	
    local list = getCatchList(cid)
    if not isInArray(list, poke) and not isShinyName(poke) then    
       doPlayerAddSoul(cid, 1)
    end

	doAddPokemonInOwnList(cid, poke)
	doAddPokemonInCatchList(cid, poke)

	if not tonumber(getPlayerStorageStringValue(cid, 54843)) or getPlayerStorageStringValue(cid, 54843) == -1 then
		setPlayerStorageStringValue(cid, 54843, 1)
	else
		setPlayerStorageStringValue(cid, 54843, getPlayerStorageStringValue(cid, 54843) + 1)
	end

    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Parabens, voce capturou um ("..poke..")!")
    addPokeToPlayer(cid, poke, 0, nil, ballid)

    local storage = newpokedex[poke].stoCatch   
    sendBrokesMsg(cid, storage, typeee)             
    setPlayerStorageStringValue(cid, storage, "normal = 0, great = 0, super = 0, ultra = 0, saffari = 0;") --alterado v1.9 /\

	if #getCreatureSummons(cid) >= 1 then
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 173) 
        if catchMakesPokemonHappier then
            setPlayerStorageStringValue(getCreatureSummons(cid)[1], 1008, getPlayerStorageStringValue(getCreatureSummons(cid)[1], 1008) + 20)
        end
	else
		doSendMagicEffect(getThingPos(cid), 173) 
	end
end

function doNotCapturePokemon(cid, poke, typeee)  

	if not isCreature(cid) then
	return true
	end

	if not tonumber(getPlayerStorageStringValue(cid, 54843)) or getPlayerStorageStringValue(cid, 54843) == -1 then
		setPlayerStorageStringValue(cid, 54843, 1)
	else
		setPlayerStorageStringValue(cid, 54843, getPlayerStorageStringValue(cid, 54843) + 1)
	end


	if #getCreatureSummons(cid) >= 1 then
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 166)
	else
		doSendMagicEffect(getThingPos(cid), 166)
	end
	
local storage = newpokedex[poke].stoCatch
doBrokesCount(cid, storage, typeee)   

end


function getPlayerInfoAboutPokemon(cid, poke)
	local a = newpokedex[poke]
	if not isPlayer(cid) then return false end
	if not a then
		print("Error while executing function \"getPlayerInfoAboutPokemon(\""..getCreatureName(cid)..", "..poke..")\", "..poke.." doesn't exist.")
	return false
	end
	local b = getPlayerStorageStringValue(cid, a.storage)

	if b == -1 then
		setPlayerStorageStringValue(cid, a.storage, poke..":")
	end

	local ret = {}
		if string.find(b, "catch,") then
			ret.catch = true
		else
			ret.catch = false
		end
		if string.find(b, "dex,") then
			ret.dex = true
		else
			ret.dex = false
		end
		if string.find(b, "use,") then
			ret.use = true
		else
			ret.use = false
		end
return ret
end


function doAddPokemonInOwnList(cid, poke)

	if getPlayerInfoAboutPokemon(cid, poke).use then return true end

	local a = newpokedex[poke]
	local b = getPlayerStorageStringValue(cid, a.storage)

	setPlayerStorageStringValue(cid, a.storage, b.." use,")
end

function isPokemonInOwnList(cid, poke)

	if getPlayerInfoAboutPokemon(cid, poke).use then return true end

return false
end

function doAddPokemonInCatchList(cid, poke)

	if getPlayerInfoAboutPokemon(cid, poke).catch then return true end

	local a = newpokedex[poke]
	local b = getPlayerStorageStringValue(cid, a.storage)

	setPlayerStorageStringValue(cid, a.storage, b.." catch,")
end

function getCatchList(cid)

local ret = {}

for a = 1000, 1251 do
	local b = getPlayerStorageStringValue(cid, a)
	if b ~= 1 and string.find(b, "catch,") then
		table.insert(ret, oldpokedex[a-1000][1])
	end
end

return ret

end




function getGeneralStatistics()
	
	local dir = "data/Pokemon Statistics/Pokemon Statistics.txt"
	local base = "Number/Name/Tries/Catches\n\n"
	local str = ""

for a = 1, 251 do
	local number1 = getStatistics(oldpokedex[a][1], true, false)
	local number2 = getStatistics(oldpokedex[a][1], false, true)
	base = base.."["..threeNumbers(a).."] "..oldpokedex[a][1].."  "..str..""..number1.." / "..number2.."\n"
end
	
return base
end

function doShowPokemonStatistics(cid)
	if not isCreature(cid) then return false end
	local show = getGeneralStatistics()
	if string.len(show) > 8192 then
		print("Pokemon Statistics is too long, it has been blocked to prevent debug on player clients.")
		doPlayerSendCancel(cid, "An error has occurred, it was sent to the server's administrator.") 
	return false
	end
	doShowTextDialog(cid, math.random(2391, 2394), show)
end  