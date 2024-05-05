function ehNPC(cid)   --alterado v1.9
return isCreature(cid) and not isPlayer(cid) and not isSummon(cid) and not isMonster(cid)
end

function ehMonstro(cid)
local eh = false
    if not isSummon(cid) and not ehNPC(cid) and not isPlayer(cid) then
        eh = true
    end
    return eh
end                                                      --alterado v1.9.1 /\

function doAppear(cid) --Faz um poke q tava invisivel voltar a ser visivel...
    if not isCreature(cid) then return true end 
    if isNumber(cid) then cid = Creature(cid) end
    setPlayerStorageValue(cid, 1346661, -1)
    doRemoveCondition(cid, CONDITION_INVISIBLE)
    doRemoveCondition(cid, CONDITION_OUTFIT)
    doCreatureSetHideHealth(cid, false)
end

function doDisapear(cid) --Faz um pokemon ficar invisivel
    if not isCreature(cid) then return true end
    setPlayerStorageValue(cid, 1346661, 1)
    doCreatureAddCondition(cid, permanentinvisible)
    doCreatureSetHideHealth(cid, true)
    doSetCreatureOutfit(cid, {lookType = 2}, -1)
end

function hasTile(pos)    --Verifica se tem TILE na pos
pos.stackpos = 0
if getTileThingByPos(pos).itemid >= 1 then
   return true
end
return false
end

function getThingFromPosWithProtect(pos)  --Pega uma creatura numa posiçao com proteçoes
if hasTile(pos) then
   if isCreature(getRecorderCreature(pos)) then
      return getRecorderCreature(pos)
   else
      pos.stackpos = 253
      pid = getThingfromPos(pos).uid
   end
else
   pid = getThingfromPos({x=1,y=1,z=10,stackpos=253}).uid
end
return pid
end

function getTileThingWithProtect(pos)    --Pega um TILE com proteçoes
if hasTile(pos) then
pos.stackpos = 0
   pid = getTileThingByPos(pos)
else
   pid = getTileThingByPos({x=1,y=1,z=10,stackpos=0})
end
return pid
end

function canAttackOther(cid, pid)         --Function q verifica se um poke/player pode atacar outro poke/player

if not isCreature(cid) or not isCreature(pid) then return "Cant" end

-- local master1 = isSummon(cid) and getCreatureMaster(cid) or cid
-- local master2 = isSummon(pid) and getCreatureMaster(pid) or pid
   
--    ----             
--    if getPlayerStorageValue(master1, 6598754) >= 5 and getPlayerStorageValue(master2, 6598754) >= 5 then
--       if getPlayerStorageValue(master1, 6598754) ~= getPlayerStorageValue(master2, 6598754) then
--          if isDuelingAgainst(master1, master2) then   --alterado v1.8
--             if isSummon(cid) and isPlayer(pid) then

--                return "Cant"
--             else
--                return "Can"
--             end
--          end
--       end
--    end
--    ----              pvp system
--    if getPlayerStorageValue(master1, 6598754) >= 1 and getPlayerStorageValue(master2, 6598755) >= 1 then
--       return "Can" 
--    end
--    if getPlayerStorageValue(master1, 6598755) >= 1 and getPlayerStorageValue(master2, 6598754) >= 1 then  ---estar em times diferentes
--       return "Can"
--    end
--    ----
--    if getTileInfo(getThingPos(cid)).pvp then
-- return "Can"
-- end
   
--    if ehMonstro(cid) and ehMonstro(pid) then 
--       return "Can"
--    end

return "Can"
end
 
function stopNow(cid, time)   
    if not isCreature(cid) or not tonumber(time) or isSleeping(cid) then return true end
    if isNumber(cid) then cid = Creature(cid) end
    local function podeMover(cid)    
        if isNumber(cid) then cid = Creature(cid) end
        if not isCreature(cid) then return true end                     
        if isPlayer(cid) then 
            doCreatureSetNoMove(cid, false) 
        elseif isCreature(cid) then 
            doRegainSpeed(cid) 
        end
    end
    if isPlayer(cid) then doCreatureSetNoMove(cid, true) else doChangeSpeed(cid, -getCreatureSpeed(cid)) end
    addEvent(podeMover, time, cid:getId())
end

function doReduceStatus(cid, off, def, agi)   --reduz os status
if not isCreature(cid) then return true end
if isNumber(cid) then cid = Creature(cid) end
local A = getStatus(cid).atk
local B = getStatus(cid).def
local C = getStatus(cid).speed

if off > 0 then
   setPlayerStorageValue(cid, 1001, A - off)
end
if def > 0 then
   setPlayerStorageValue(cid, 1002, B - def)
end
if agi > 0 then
   setPlayerStorageValue(cid, 1003, C - agi)
   if getCreatureSpeed(cid) ~= 0 then
      doRegainSpeed(cid)
   end                                              --alterado v1.5  functions arrumadas...
end
end

function doRaiseStatus(cid, off, def, agi, time)  
if not isCreature(cid) then return true end
if isNumber(cid) then cid = Creature(cid) end
local A = getStatus(cid).atk
local B = getStatus(cid).def
local C = getStatus(cid).speed

if off > 0 then
   setPlayerStorageValue(cid, 1001, A * off)
end
if def > 0 then
   setPlayerStorageValue(cid, 1002, B * def)
end
if agi > 0 then
   setPlayerStorageValue(cid, 1003, C + agi)
   if getCreatureSpeed(cid) ~= 0 then
      doRegainSpeed(cid)
   end
end

local D = getStatus(cid).atk
local E = getStatus(cid).def
local F = getStatus(cid).speed
---------------------------
local G = D - A
local H = E - B
local I = F - C

addEvent(doReduceStatus, time*1000, cid:getId(), G, H, I)
end


function BackTeam(cid)      
    if not isCreature(cid) then return true end    
  if isNumber(cid) then cid = Creature(cid) end
  if isCreature(cid) then
     local summon = getCreatureSummons(cid)   --alterado v1.6
     for i = 2, #summon do
         doSendMagicEffect(getThingPos(summon[i]), 211)
         doRemoveCreature(summon[i])
     end
     setPlayerStorageValue(cid, 637501, -1)
  end  
end
    
function choose(...) -- by mock
    local arg = {...}
    return arg[math.random(1,#arg)]
end

function isShinyName(name)        
return tostring(name) and string.find(doCorrectString(name), "Shiny") --alterado v1.9
end

function isNpcSummon(cid)
return isNpc(getCreatureMaster(cid))
end

function doSetItemAttribute(item, key, value)
doItemSetAttribute(item, key, value)
end

function isTransformed(cid)
return isCreature(cid) and not isInArray({-1, "Ditto", "Shiny Ditto"}, getPlayerStorageValue(cid, 1010))  --alterado v1.9
end

function doCorrectPokemonName(poke)
    return doCorrectString(poke)
end

function doCorrectString(str)
    if str == nil then return "" end
    if type(str) ~= "string" then return "" end
    local name = str:explode(" ") --alterado v1.9
    local final = {}
    for _, s in ipairs(name) do
        table.insert(final, s:sub(1, 1):upper()..s:sub(2, #s):lower())
    end
    return table.concat(final, (name[2] and " " or ""))
end 

function doBodyPush(cid, target, go, pos)
	if not isCreature(cid) or not isCreature(target) then
		doRegainSpeed(cid)
		doRegainSpeed(target)
	return true
	end
		if go then
			local a = getThingPos(cid)
			doChangeSpeed(cid, -getCreatureSpeed(cid))
				if not isPlayer(target) then
					doChangeSpeed(target, -getCreatureSpeed(target))
				end
			doChangeSpeed(cid, 800)
			doTeleportThing(cid, getThingPos(target))
			doChangeSpeed(cid, -800)
			addEvent(doBodyPush, 350, cid:getId(), target:getId(), false, a)
		else
			doChangeSpeed(cid, 800)
			doTeleportThing(cid, pos)
			doRegainSpeed(cid)
			doRegainSpeed(target)
		end
end
 
function doRegainSpeed(cid) --mixlort remover
    if not isCreature(cid) then return true end
    if isNumber(cid) then cid = Creature(cid) end

    local speed = 440
    if isMonster(cid) then
        speed = getStatus(cid).speed
	elseif isPlayer(cid) and getPlayerStorageValue(cid, 5700) > 0 then
	    speed = speed + (2 * ((getPlayerLevel(cid)) - 1)) + getPlayerStorageValue(cid, 5700)
	elseif isPlayer(cid) then
	    speed = speed + (2 * ((getPlayerLevel(cid)) - 1))
    end
   
    doChangeSpeed(cid, -getCreatureSpeed(cid))
    if getCreatureCondition(cid, CONDITION_PARALYZE) == true then
        doRemoveCondition(cid, CONDITION_PARALYZE)
        addEvent(doAddCondition, 10, cid:getId(), paralizeArea2)             
    end
    
    doChangeSpeed(cid, speed)
    return speed
end

function isPokeball(item)
if not item then return false end
for a, b in pairs (pokeballs) do
	if isInArray(b.all, item) then return true end
	if item >= 12861 and item <= 13781 then
	return true
	end
	if item >= 13797 and item <= 13823 then
	return true
	end
        if item >= 10975 and item <= 10977 then
        return true
	end
	if item >= 13836 and item <= 13856 then
	return true
	end
end
return false
end

function getPokeballType(id)
	for a, b in pairs (pokeballs) do
		if isInArray(b.all, id) then
			return a
		end
	end
return "normal"
end

function doFaceOpposite(cid)
local a = getCreatureLookDir(cid)
local d = {
[NORTH] = SOUTH,
[SOUTH] = NORTH,
[EAST] = WEST,
[WEST] = EAST,
[NORTHEAST] = SOUTHWEST,
[NORTHWEST] = SOUTHEAST,
[SOUTHEAST] = NORTHWEST,
[SOUTHWEST] = NORTHEAST}
doCreatureSetLookDir(cid, d[a])
end

function getCreatureDirectionToTarget(cid, target, ranged) 
	if not isCreature(cid) then return true end
	if not isCreature(target) then return getCreatureLookDirection(cid) end

--    print("ERRO, usar getCreatureLookDirection") --mixlort

   return getCreatureLookDirection(target) --mixlort
	-- local dirs = {
	-- [NORTHEAST] = {NORTH, EAST},
	-- [SOUTHEAST] = {SOUTH, EAST},
	-- [NORTHWEST] = {NORTH, WEST},
	-- [SOUTHWEST] = {SOUTH, WEST}}
	-- local x = getDirectionTo(getThingPos(cid), getThingPos(target), false)
	-- 	if x <= 3 then return x
	-- 	else
	-- 		local xdistance = math.abs(getThingPos(cid).x - getThingPos(target).x)
	-- 		local ydistance = math.abs(getThingPos(cid).y - getThingPos(target).y)
	-- 			if xdistance > ydistance then
	-- 				return dirs[x][2]
	-- 			elseif ydistance > xdistance then
	-- 				return dirs[x][1]
	-- 			elseif isInArray(dirs[x], getCreatureLookDir(cid)) then
	-- 				return getCreatureLookDir(cid)
	-- 			else
	-- 				return dirs[x][math.random(1, 2)]
	-- 			end
	-- 	end
end

function getSomeoneDescription(cid)
	-- if isPlayer(cid) then return getPlayerNameDescription(cid) end
-- return getMonsterInfo(getCreatureName(cid)).description
return cid:getName()
end
	
function isGhostPokemon(cid) 
	if not isCreature(cid) then return false end
	local isGhost = {}
    local ghosts = {"Gastly", "Haunter", "Gengar", "Shiny Gengar", "Misdreavus", "Shiny Abra", "Shuppet", "Banette", "Sableye", "Dusknoir", "Misdreavus"}
	
	if isSummon(cid) and isPlayer(getCreatureMaster(cid)) then
	    local ball = getPlayerSlotItem(getCreatureMaster(cid), 8).uid
		if not ball then
	        if isInArray(ghosts, getCreatureName(cid)) then 
			    return true
		    else
			    return false
		    end
	    end
		
		local Tier = getItemAttribute(ball, "heldy")
		if Tier and Tier == 39 or isInArray(ghosts, getCreatureName(cid)) then 
            -- doCreatureSetSkullType(cid, 5)
			return true
		else
			return false
		end
	end

	if isInArray(ghosts, getCreatureName(cid)) then 
		isGhost = true
	else
		isGhost = false
	end
	
	return isGhost
end

function doFaceCreature(sid, pos)
if not isCreature(sid) then return true end
	if getThingPos(sid).x == pos.x and getThingPos(sid).y == pos.y then return true end
	local ret = 0

	local ld = getCreatureLookDir(sid)
	local dir = getDirectionTo(getThingPos(sid), pos)
	local al = {
	[NORTHEAST] = {NORTH, EAST},
	[NORTHWEST] = {NORTH, WEST},
	[SOUTHEAST] = {SOUTH, EAST},
	[SOUTHWEST] = {SOUTH, WEST}}

	if dir >= 4 and isInArray(al[dir], ld) then return true end

	doChangeSpeed(sid, 1)
		if dir == 4 then
			ret = math.random(2, 3)
		elseif dir == 5 then
			ret = math.random(1, 2)
		elseif dir == 6 then
			local dirs = {0, 3}
			ret = dirs[math.random(1, 2)]
		elseif dir == 7 then
			ret = math.random(0, 1)
		else
			ret = getDirectionTo(getThingPos(sid), pos)
		end
doCreatureSetLookDir(sid, ret)
doChangeSpeed(sid, -1)
return true
end

function doCreatureAddCondition(cid, condition)
if not isCreature(cid) then return true end
doAddCondition(cid, condition)
end

function setCD(item, tipo, tempo, cid)

	if not tempo or not tonumber(tempo) then
	   doItemEraseAttribute(item, tipo)
	   return true
	end

    if cid and isInArray(staffAcess, getCreatureName(cid)) then
       tempo = 1
    end

	doItemSetAttribute(item, tipo, "cd:"..(tempo + os.time()).."")

return tempo + os.time()
end

function getCD(item, tipo, limite)

	if not getItemAttribute(item, tipo) then
	return 0
	end

	local string = getItemAttribute(item, tipo):gsub("cd:", "")
	local number = tonumber(string) - os.time()

	if number <= 0 then
	return 0
	end

	if limite and limite < number then
		return 0
	end

return number
end

function doSetItemActionId(uid, actionid)
doItemSetAttribute(uid, "aid", actionid)
return true
end

function isBeingUsed(ball)            
if not ball then return false end
for a, b in pairs (pokeballs) do           --alterado v1.9
    if b.use == ball then return true end
end
return false
end

function canWalkOnPos(pos, creature, pz, water, sqm, proj)
if not pos then return false end
if not pos.x then return false end
if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid <= 1 and sqm then return false end
if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 919 then return false end
if isInArray({4820, 4821, 4822, 4823, 4824, 4825}, getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid) and water then return false end
if getTopCreature(pos).uid > 0 and creature then return false end
if getTileInfo(pos).protection and pz then return false end
    local n = not proj and 3 or 2                                    --alterado v1.6
    for i = 0, 255 do
        pos.stackpos = i                           
        local tile = getTileThingByPos(pos)        
        if tile.itemid ~= 0 and i ~= 253 and not isCreature(tile.uid) then     --edited
            if hasProperty(tile.uid, n) or hasProperty(tile.uid, 7) then
                return false
            end
        end
    end   
return true
end

function canWalkOnPos2(pos, creature, pz, water, sqm, proj)     --alterado v1.6
if not pos then return false end
if not pos.x then return false end
if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid <= 1 and sqm then return false end
if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 919 then return false end
if isInArray({4820, 4821, 4822, 4823, 4824, 4825}, getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid) and water then return false end
if getTopCreature(pos).uid > 0 and creature then return false end
if getTileInfo(pos).protection and pz then return false end
return true
end


function isWalkable(pos, creature, proj, pz, water)-- by Nord
    if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 0 then return false end
    if isWater(getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid) and water then return false end
    if getTopCreature(pos).uid > 0 and creature then return false end
    if getTileInfo(pos).protection and pz then return false, true end
    local n = not proj and 3 or 2
    for i = 0, 255 do
        pos.stackpos = i
        local tile = getTileThingByPos(pos)
        if tile.itemid ~= 0 and not isCreature(tile.uid) then
            if hasProperty(tile.uid, n) or hasProperty(tile.uid, 7) then
                return false
            end
        end
    end
    return true
end

function isSummon(sid)
    return isCreature(sid) and getCreatureMaster(sid) ~= sid and isPlayer(getCreatureMaster(sid)) --alterado v1.9
end 

function getItemsInContainerById(container, itemid) -- Function By Kydrai
local items = {}
if isContainer(container) and getContainerSize(container) > 0 then
   for slot=0, (getContainerSize(container)-1) do
       local item = getContainerItem(container, slot)
       if isContainer(item.uid) then
          local itemsbag = getItemsInContainerById(item.uid, itemid)
          for i=0, #itemsbag do
              table.insert(items, itemsbag[i])
          end
       else
          if itemid == item.itemid then
             table.insert(items, item.uid)
          end
       end
   end
end
return items
end

function hasSpaceInContainer(container) --alterado v1.6
    if not isContainer(container) then return false end
    if getContainerSize(container) < getContainerCap(container) then return true end
    
    for slot = 0, (getContainerSize(container)-1) do
        local item = getContainerItem(container, slot)
        if isContainer(item.uid) then
            if hasSpaceInContainer(item.uid) then
                return true
            end
        end
    end
    return false
end

function doPlayerRemoveEasterPoints(cid, count)
	if not isCreature(cid) then return false end
	points = getEasterPoints(cid)
	if (points - count) <= 0 then return false end
	if (points - count) > 0 then
		setPlayerStorageValue(cid, 14264, (points - count))
		return true
	end
return false
end

function doStartAutomaticWalk(cid)
	if not isCreature(cid) then return false end
	if getPlayerStorageValue(cid, 9549) >= 1 then
		stopAutomaticWalk(cid)
		setPlayerStorageValue(cid, 9549, -1)
		return false
	end
	pos = getThingPos(cid)
	dir = getCreatureLookDir(cid)
	newpos = ""
	if dir == 0 then
		newpos = {x = pos.x, y = pos.y - 1, z = pos.z}
	elseif dir == 1 then
		newpos = {x = pos.x + 1, y = pos.y, z = pos.z}
	elseif dir == 2 then
		newpos = {x = pos.x, y = pos.y + 1, z = pos.z}
	elseif dir == 3 then
		newpos = {x = pos.x - 1, y = pos.y, z = pos.z}
	end
	if newpos == "" then return false end
	canAutomatic = false
	if getPlayerStorageValue(cid, 17000) >= 1 then
		canAutomatic = true
	end
	if getPlayerStorageValue(cid, 63215) >= 1 then
		canAutomatic = true
	end
	if not canAutomatic then
		stopAutomaticWalk(cid)
	return true
	end
	if getPlayerStorageValue(cid, 17000) >= 1 and getTileThingByPos(newpos).itemid == 0 then
		doCreateItem(460, 1, newpos)
	end
	if not isWalkable(newpos) then
		stopAutomaticWalk(cid)
	return false
	end
	if getTileThingByPos(newpos).itemid ~= 0 and getTileInfo(newpos).protection then
		stopAutomaticWalk(cid)
	return false
	elseif getHouseFromPos(newpos) then
		stopAutomaticWalk(cid)
	return false
	end
	if isCreature(getThingFromPosWithProtect(newpos)) then
		stopAutomaticWalk(cid)
	return false
	end
	setPlayerStorageValue(cid, 9548, 1)
	doCreatureSetNoMove(cid, true)
	doTeleportThing(cid, newpos, false)
	time = 100
	addEvent(doStartAutomaticWalk, time, cid:getId())
return true
end

function stopAutomaticWalk(cid)
	if not isCreature(cid) then return false end
	if not isAutomaticWalking(cid) then return false end
	doCreatureSetNoMove(cid, false)
	setPlayerStorageValue(cid, 9548, -1)
	doCreatureSay(cid, ""..getItemAttribute(getPlayerSlotItem(cid, 8).uid, "pokeName")..", stop.", 1)
	return true
end

function isAutomaticWalking(cid)
	if not isCreature(cid) then return false end
	if getPlayerStorageValue(cid, 9548) >= 1 then return true end
	return false
end

function doRegenerateWithY(cid, sid)
    if not isCreature(cid) then
		return
	end
	
	if not isCreature(sid) then
		return
	end
	
    if isPlayerOnline(cid) then
        local ball = getPlayerSlotItem(cid, 8) --or getPlayerSlotItem(getCreatureMaster(cid), 8)
        local Tiers = {
            [1] = {bonus = Regen1},
            [2] = {bonus = Regen2},
            [3] = {bonus = Regen3},
            [4] = {bonus = Regen4},
            [5] = {bonus = Regen5},
            [6] = {bonus = Regen6},
            [7] = {bonus = Regen7},
        }
        if isPlayer(cid) and #getCreatureSummons(cid) > 0 then
		    if type(getPlayerStorageValue(cid, 89142)) == "string" then--duel viktor  
                return true
            end
		    if ball then
                local Tier = getItemAttribute(ball.uid, "heldy")
                if Tier and Tier > 0 and Tier < 8 then
                    if not getCreatureCondition(cid, CONDITION_INFIGHT) then
                        if getCreatureHealth(sid) < getCreatureMaxHealth(sid) then
                            local sidId = sid:getId()
                            addEvent(function() 
                                if isOnline(sidId) then
                                    doCreatureAddHealth(sidId, Tiers[Tier].bonus) 
                                    doSendAnimatedText(getThingPos(sidId), "+ "..Tiers[Tier].bonus, 30) 
                                end
                            end, 0)
                        end
                        addEvent(doRegenerateWithY, 1000, cid:getId(), sid:getId())  
                    else
                        addEvent(doRegenerateWithY, 1000, cid:getId(), sid:getId())
                    end
                end   
            end
        end 
    end
end

function doCureWithY(cid, sid)
    if not isCreature(cid) then
		return
	end
	
	if not isCreature(sid) then
		return
	end
	
    if isPlayerOnline(cid) then
        local ball = getPlayerSlotItem(cid, 8) --or getPlayerSlotItem(getCreatureMaster(cid), 8)
		
        local Tiers = {
            [8] = {chance = Cure1},
            [9] = {chance = Cure2},
            [10] = {chance = Cure3},
            [11] = {chance = Cure4},
            [12] = {chance = Cure5},
            [13] = {chance = Cure6},
            [14] = {chance = Cure7},
        }
        
        if isPlayer(cid) and #getCreatureSummons(cid) > 0 then
		
		    if type(getPlayerStorageValue(cid, 89142)) == "string" then--duel viktor  
                return true
            end
			
			if ball then
			    local Tier = getItemAttribute(ball.uid, "heldy")
            	if Tier and Tier > 7 and Tier < 15 then
                	if math.random(1, 100) <= Tiers[Tier].chance then
                    	doCureStatus(sid, "all")  
                    	doSendMagicEffect(getThingPosWithDebug(sid), 14)
                	end
                	addEvent(doCureWithY, 1000, cid:getId(), sid:getId())  
            	end
			end
        end
    end   
end
  
function isPlayerOnline(uid)
    return isInArray(getPlayersOnline(), uid)
end

function getContainerBackpack(containeruid) 

    local containers = {} 
    
        if type(getContainerSize(containeruid)) ~= "number" then 
            return false 
        end 
        
        for slot = 0, getContainerSize(containeruid)-1 do 
        local item = getContainerItem(containeruid, slot) 
        
            if item.itemid == 0 then 
                break 
            end 
            
            if isContainer(item.uid) then 
                table.insert(containers, item.uid) 
            end 
        end 
    
        for i = 1, #containers do
            if #containers > 1 then
                table.remove(containers, containers[i+1])
            end
            if #containers > 2 then
                table.remove(containers, containers[i+2])
            end
            if #containers > 3 then
                table.remove(containers, containers[i+3])
            end
            if #containers > 4 then
                table.remove(containers, containers[i+4])
            end
            if #containers > 5 then
                table.remove(containers, containers[i+5])
            end
        end
            
        for i = 1, #containers do 
            for _, x in ipairs(getContainerBackpack(containers[i])) do 
                table.insert(containers, x) 
            end 
        end 
        
        return containers 
end
    
function getPlayerPokemons(cid)
    local ret = {}
    if isPlayer(cid) and #getCreatureSummons(cid) > 0 then
        for i = 1, #getCreatureSummons(cid) do
        if isCreature(getCreatureSummons(cid)[i]) and getCreatureStorage(getCreatureSummons(cid)[i], 10) ~= "guardian" then
            table.insert(ret, getCreatureSummons(cid)[i])
        end
        end
    end
    return ret
end

function getRecorderCreature(pos, cid)
	local ret = 0
	if cid and isPosEqual(getThingPos(cid), pos) then   --alterado v1.9
	   return cid
	end
	local s = {}
	s.x = pos.x
	s.y = pos.y
	s.z = pos.z
		for a = 0, 255 do
			s.stackpos = a
			local b = getTileThingByPos(s).uid
			if b > 1 and isCreature(b) and getCreatureOutfit(b).lookType ~= 814 then
				ret = b
			end
		end
return ret
end

function getPokeballsInContainer(container) -- Function By Kydrai
	if not isContainer(container) then return {} end
	local items = {}
	if isContainer(container) and getContainerSize(container) > 0 then
		for slot=0, (getContainerSize(container)-1) do
			local item = getContainerItem(container, slot)
            if isContainer(item.uid) then
                local itemsbag = getPokeballsInContainer(item.uid)
                for i=0, #itemsbag do
                    table.insert(items, itemsbag[i])
                end
            elseif isPokeball(item.itemid) then
                table.insert(items, item.uid)
            end
		end
	end
return items
end

function doPushCreatureTo(uid, direction, distance, speed)   --//doPushCreature(creature,getPlayerLookDir(cid))
-- Desenvolvido por Dokmos 30/01/2009
-- Apoio Dinastias
local pos = getThingPos(uid)
local PARAM = {{1}, {500}}
local DIRECTION = {
{{0,0},{6,7},{1,3}}, {{1,1},{5,7},{0,2}}, {{2,2},{4,5},{1,3}}, {{3,3},{4,6},{0,2}},
{{4,4},{2,3}}, {{5,5}, {1,2}}, {{6,6},{0,1}}, {{7,7},{0,3}}
}
table.insert(PARAM[1], distance)
table.insert(PARAM[2], speed)

        for dvar = 1, #DIRECTION[direction+1] do
        rand = math.random(2)
        d = DIRECTION[direction+1][dvar][rand]
        dir = {x = (math.fmod(d,2)*(-(d-2))+math.floor(d/4)*math.fmod(d,2)*d-math.floor(d/4)), y = (((d-1)*(d-1-(d-1)*math.abs(d-2))*(1-math.floor(d/4)))-(math.floor(d/4)*(math.floor(d/6)*2-1)))}
        newtile = {x = (pos.x+dir.x), y = (pos.y+dir.y), z = pos.z}
                if  (getTileThingByPos(newtile).uid ~= 0) and (hasProperty(getTileThingByPos(newtile).uid,3) == FALSE) and (queryTileAddThing(uid,newtile) == 1) then break end
        rand = (math.fmod(rand,2)+1)
        d = DIRECTION[direction+1][dvar][rand]
        dir = {x = (math.fmod(d,2)*(-(d-2))+math.floor(d/4)*math.fmod(d,2)*d-math.floor(d/4)), y = (((d-1)*(d-1-(d-1)*math.abs(d-2))*(1-math.floor(d/4)))-(math.floor(d/4)*(math.floor(d/6)*2-1)))}
        newtile = {x = (pos.x+dir.x), y = (pos.y+dir.y), z = pos.z}
                if  (getTileThingByPos(newtile).uid ~= 0) and (hasProperty(getTileThingByPos(newtile).uid,3) == FALSE) and (queryTileAddThing(uid,newtile) == 1) then break end
                if (dvar == #DIRECTION[direction+1]) then
                newtile = pos
                end
        end
        
        doTeleportThing(uid, newtile, true)
        if (PARAM[1][#PARAM[1]] > 1) then
        addEvent(doPushCreature, PARAM[2][#PARAM[2]], uid:getId(), direction, (distance-1), speed)
        end     
end
--///////////////////////////////////////////////////////////////////////////////////////////////////////--
local dirpref = {
[1] =  {[NORTH] = {[1] = {NORTH}, [2] = {EAST, WEST}, [3] = {NORTHEAST, NORTHWEST}},
	[EAST] = {[1] = {EAST}, [2] = {NORTH, SOUTH}, [3] = {NORTHEAST, SOUTHEAST}},
	[SOUTH] = {[1] = {SOUTH}, [2] = {EAST, WEST}, [3] = {SOUTHEAST, SOUTHWEST}},
	[WEST] = {[1] = {WEST}, [2] = {SOUTH, NORTH}, [3] = {NORTHWEST, SOUTHWEST}},
	[NORTHEAST] = {[1] = {NORTH, EAST}, [2] = {NORTHEAST}, [3] = {SOUTH, WEST}},
	[SOUTHEAST] = {[1] = {SOUTH, EAST}, [2] = {SOUTHEAST}, [3] = {NORTH, WEST}},
	[SOUTHWEST] = {[1] = {SOUTH, WEST}, [2] = {SOUTHWEST}, [3] = {NORTH, EAST}},
	[NORTHWEST] = {[1] = {NORTH, WEST}, [2] = {NORTHWEST}, [3] = {EAST, SOUTH}}},
[2] =  {[NORTH] = {[1] = {NORTH}, [2] = {WEST, EAST}, [3] = {NORTHWEST, NORTHEAST}},
	[EAST] = {[1] = {EAST}, [2] = {SOUTH, NORTH}, [3] = {SOUTHEAST, NORTHEAST}},
	[SOUTH] = {[1] = {SOUTH}, [2] = {WEST, EAST}, [3] = {SOUTHWEST, SOUTHEAST}},
	[WEST] = {[1] = {WEST}, [2] = {NORTH, SOUTH}, [3] = {SOUTHWEST, NORTHWEST}},
	[NORTHEAST] = {[1] = {EAST, NORTH}, [2] = {NORTHEAST}, [3] = {WEST, SOUTH}},
	[SOUTHEAST] = {[1] = {EAST, SOUTH}, [2] = {SOUTHEAST}, [3] = {WEST, NORTH}},
	[SOUTHWEST] = {[1] = {WEST, SOUTH}, [2] = {SOUTHWEST}, [3] = {EAST, NORTH}},
	[NORTHWEST] = {[1] = {WEST, NORTH}, [2] = {NORTHWEST}, [3] = {SOUTH, EAST}}},
}

function doPushCreature(uid,direction,distance,time)
   if isCreature(uid) == TRUE then
      local rand = (2*math.random(0,1))-1
      local rand2 = math.random(-1,0)
	  if direction == 0 then
	     signal = {0,rand,-rand,rand,-rand,0,-1,-1,-1,0,0,0}
	  elseif direction == 1 then
         signal = {1,1,1,0,0,0,0,rand,-rand,rand,-rand,0}
	  elseif direction == 2 then
	     signal = {0,rand,-rand,rand,-rand,0,1,1,1,0,0,0}
      elseif direction == 3 then
         signal = {-1,-1,-1,0,0,0,0,rand,-rand,rand,-rand,0}
      elseif direction == 4 then
         signal = {-1,rand2,(-rand2)-1,0,1,rand2+1,rand2,0}
      elseif direction == 5 then
         signal = {1,-rand2,-((-rand2)-1),0,1,rand2+1,rand2,0}
      elseif direction == 6 then
         signal = {-1,rand2,(-rand2)-1,0,-1,(-rand2)-1,rand2,0}
      else
         signal = {1,-rand2,-((-rand2)-1),0,-1,(-rand2)-1,rand2,0}
      end
      local pos = getThingPos(uid)
      nsig = #signal
      nvar = 0

      repeat
         nvar = nvar+1
         newpos = {x=pos.x+(signal[nvar]),y=pos.y+(signal[(nsig/2)+nvar]),z=pos.z}
         newtile = {x=newpos.x,y=newpos.y,z=newpos.z,stackpos=0}
      until getTileThingByPos(newtile).uid ~= 0 and hasProperty(getTileThingByPos(newtile).uid,3) == FALSE and canWalkOnPos(newtile, true, false, true, true, false) and queryTileAddThing(uid,newpos) == 1 or nvar == (nsig/2)
                                                                                                                   --alterado v1.5
      if distance == nil or distance == 1 then
         doTeleportThing(uid,newpos,TRUE)   
      else
         distance = distance-1
         doTeleportThing(uid,newpos,TRUE)
         if time ~= nil then
            addEvent(doPushCreature,time,uid:getId(),direction,distance,time)
         else
            addEvent(doPushCreature,500,uid:getId(),direction,distance,500)
         end	   
      end
   end  
end

function doComparePosition(pos1, pos2)
	if pos1.x == pos2.x and pos1.y == pos2.y and pos1.z == pos2.z then
	return true
	end
return false
end

function getDistanceToCreature(id)

	-- if not isCreature(id) then
	-- return 0
	-- end

	-- local pos = getThingPos(id)
	-- local mos = getThingPos(Npc())

	-- return getDistanceBetween(pos, mos)
    return 1
end

function sendMsgToPlayer(cid, tpw, msg)      --alterado v1.7 \/\/\/
if not isCreature(cid) or not tpw or not msg then return true end
return doPlayerSendTextMessage(cid, tpw, msg)
end

function getTopCorpse(position)
local pos = position
for n = 1, 255 do
    pos.stackpos = n
    local item = getTileThingByPos(pos)
    if item.itemid >= 2 and (string.find(getItemNameById(item.itemid), "fainted ") or string.find(getItemNameById(item.itemid), "defeated ")) then
       return getTileThingByPos(pos)
    end
end
return null
end

function doRemoveElementFromTable(t, e)
	local ret = {}
	for a = 1, #t do
		if t[a] ~= e then
		table.insert(ret, t[a])
		end
	end
return ret
end

function addItemInFreeBag(container, item, num)
if not isContainer(container) or not item then return false end                                             
if not num or num <= 0 then num = 1 end                                            --alterado v1.6.1
if getContainerSize(container) < getContainerCap(container) then
   return doAddContainerItem(container, item, num)
else
   for slot = 0, (getContainerSize(container)-1) do
       local container2 = getContainerItem(container, slot)
       if isContainer(container2.uid) and getContainerSize(container2.uid) < getContainerCap(container2.uid) then
          return doAddContainerItem(container2.uid, item, num)
       end
   end
end
return false
end

PokemonStageVeryHappy = 215
PokemonStageHappy = 160
PokemonStageOK = 110
PokemonStageSad = 50
PokemonStageMad = 0

happinessRate = {
    [5] = {rate = 1.5, effect = 183, n = PokemonStageVeryHappy},
    [4] = {rate = 1.2, effect = 170, n = PokemonStageHappy},
    [3] = {rate = 1.0, effect = 182, n = PokemonStageOK},
    [2] = {rate = 0.7, effect = 169, n = PokemonStageSad},
    [1] = {rate = 0.4, effect = 168, n = PokemonStageMad}
 }

function getHappinessRate(cid)
	if not isCreature(cid) then return 1 end
	local a = getPlayerStorageValue(cid, 1008)
		if a == -1 then return 1 end
	if a >= PokemonStageVeryHappy then
		return happinessRate[5].rate
	elseif a >= PokemonStageHappy then
		return happinessRate[4].rate
	elseif a >= PokemonStageOK then
		return happinessRate[3].rate
	elseif a >= PokemonStageSad then
		return happinessRate[2].rate
	else
		return happinessRate[1].rate
	end
return 1
end

function getRecorderPlayer(pos, cid)
	local ret = 0
	if cid and isPosEqual(getThingPos(cid), pos) then   --alterado v1.9
	   return cid
	end
	local s = {}
	s.x = pos.x
	s.y = pos.y
	s.z = pos.z
		for a = 0, 255 do
			s.stackpos = a
			local b = getTileThingByPos(s).uid
			if b > 1 and isPlayer(b) and getCreatureOutfit(b).lookType ~= 814 then
				ret = b
			end
		end
return ret
end

function getRecorderCreature(pos, cid)
	local ret = 0
	if cid and isPosEqual(getThingPos(cid), pos) then   --alterado v1.9
	   return cid
	end
	local s = {}
	s.x = pos.x
	s.y = pos.y
	s.z = pos.z
		for a = 0, 255 do
			s.stackpos = a
			local b = getTileThingByPos(s).uid
			if b > 1 and isCreature(b) and getCreatureOutfit(b).lookType ~= 814 then
				ret = b
			end
		end
return ret
end

function isWater(id)
return tonumber(id) and id >= 4820 and id <= 4825 --alterado v1.9
end

function doRegainSpeedLevel(cid)

local speed = 220
local spood = getCreatureSpeed(cid)
local level = getPlayerLevel(cid)

if isPlayer(cid) then
doChangeSpeed(cid, -spood)
doChangeSpeed(cid, speed + (level * 3))
setPlayerStorageValue(cid, 1242343, (speed + (level * 3)))
end
return true
end

function doSetPlayerSpeedLevel(cid)
local speed = 220
local spood = getCreatureSpeed(cid)
local level = getPlayerLevel(cid)
doChangeSpeed(cid, -spood)
doChangeSpeed(cid, speed + (level * 3)) 
end
