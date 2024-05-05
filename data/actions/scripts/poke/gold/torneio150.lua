function onUse(cid, item, fromPosition, itemEx, toPosition)
local pos = {x = 931, y = 1701, z = 7}

-- if getPlayerGroupId(cid) >= 5 then
-- doBroadcastMessage("o "..getCreatureName(cid).." esta tentando ganhar o torneio ilegalmente")
-- return true
-- end
if #getPlayersInArea(torneiomary.areamary) > 1 then
doPlayerSendTextMessage(cid, 26 ,"Você precisa derrotar todos os treinadores para vencer o torneio")
return true 
end

doTeleportThing(cid, pos)
doBroadcastMessage("Parabens ao treinador "..getCreatureName(cid).." foi o ganhador do torneio de johto 150- de hoje, verifique o RANK em nosso site: www.otpMysterious.ddns.net!")
doPlayerSave(cid) 
local atualPremioo = getGlobalStorageValue(844565)
local efe = getCreaturePosition(cid)
doPlayerAddMoney(cid, atualPremioo * 200000)
doSendMagicEffect(efe, 241)
setGlobalStorageValue(844565, -1)
return true
end