local pos_room = {x=1061,y=2026,z=8} 
local radius = 11 
local Premio = {x=1601, y=1017, z=10}

questhalloween = {
quest = {fromx = 1380, fromy = 949, fromz = 10, tox = 1635, toy = 1104, toz= 10}
}
 
function getHalloweenInArea(area)

local players = {}

for x = area.fromx,area.tox do
for y = area.fromy,area.toy do
for z = area.fromz,area.toz do

local m = getTopCreature({x=x, y=y, z=z}).uid
      
if isCreature(m) and not isPlayer(m) and not isSummon(m) and getCreatureOutfit(m).lookType == 2117 then
table.insert(players, m)
end
end
end
end
return players
end
 
function onUse(cid,item,pos) 

    if (getPlayerStorageValue(cid, 5555413) > os.time()) and getPlayerGroupId(cid) < 5 then
        return doPlayerSendCancel(cid, "Aguarde ".. math.ceil((getPlayerStorageValue(cid, 5555413) - os.time()) / 60) .." minuto(s) para fazer a quest novamente.")
    end

if getGlobalStorageValue(177845) > 0 then
if getPlayerStorageValue(cid, 1147890) > 3 then
 doPlayerSendTextMessage(cid, 26, "Voce ja fez a quest mais de 3 vezes, retorne ao centro pokemon.")
return true
end
   if #getHalloweenInArea(questhalloween.quest) == 0 then 
         doTeleportThing(cid, Premio, true)  
		 doSendMagicEffect(getPlayerPosition(cid), 21)
		 return true
   else
      doPlayerSendTextMessage(cid, 26, "Ainda restam " .. #getHalloweenInArea(questhalloween.quest) .. " Halloween Gengar's, mate todos.")
   end
   return true 
 else
 doPlayerSendTextMessage(cid, 26, "A Alavanca esta trancada, aguarde o horario certo.")
 return true
 end
 return true
end