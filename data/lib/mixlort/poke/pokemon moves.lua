const_distance_delay = 56

RollOuts = {
["Voltorb"] = {lookType = 638},
["Electrode"] = {lookType = 637},
["Sandshrew"] = {lookType = 635},
["Sandslash"] = {lookType = 636},
["Phanpy"] = {lookType = 1005},
["Donphan"] = {lookType = 1456},
["Miltank"] = {lookType = 1006},                
["Golem"] = {lookType = 639},
["Shiny Electrode"] = {lookType = 1387},
["Shiny Golem"] = {lookType = 1403},
["Shiny Voltorb"] = {lookType = 1388}
}

--//////////////////////////////////////////////////////////////////////////////////////////////////////////--
function getSubName(cid, target)
if not isCreature(cid) then return "" end
if getCreatureName(cid) == "Ditto" and pokes[getPlayerStorageValue(cid, 1010)] and getPlayerStorageValue(cid, 1010) ~= "Ditto" then
   return getPlayerStorageValue(cid, 1010)
elseif pokeHaveReflect(cid) and isCreature(target) then
   return getCreatureName(target)
else                                                                --alterado v1.6.1
   return getCreatureName(cid)
end
end

function getThingName(cid)
if not isCreature(cid) then return "" end   --alterado v1.6
return getCreatureName(cid)
end

function getTableMove(cid, move)               --alterado v1.6
local backup = {f = 0, t = ""}
if getThingName(cid) == "Ditto" and pokes[getPlayerStorageValue(cid, 1010)] and getPlayerStorageValue(cid, 1010) ~= "Ditto" then
   name = getPlayerStorageValue(cid, 1010)
else
   name = getThingName(cid)
end
if not isCreature(cid) or name == "" or not move then return backup end
local x = movestable[name]
if not x then return "" end   
local z = {x.move1, x.move2, x.move3, x.move4, x.move5, x.move6, x.move7, x.move8, x.move9, x.move10, x.move11, x.move12, x.passive1, x.passive2, x.passive3}
if getPlayerStorageValue(cid, 21103) ~= -1 then
   local sto = getPlayerStorageValue(cid, 21103) 
   setPlayerStorageValue(cid, 21103, -1) 
   return {f = sto, t = ""} 
end
for j = 1, 15 do
  if z[j] and z[j].name == move then
     return z[j]
  end
end
return movesinfo[move]
end

function getMasterTarget(cid)
if isCreature(cid) and getPlayerStorageValue(cid, 21101) ~= -1 then
   return getPlayerStorageValue(cid, 21101)     --alterado v1.6
end
    if isSummon(cid) then
	    return getCreatureTarget(getCreatureMaster(cid))
	else
	    return getCreatureTarget(cid)
    end
end
