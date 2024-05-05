function onUse(cid, item, fromPosition, itemEx, toPosition)
local pos = {x = 931, y = 1700, z = 6}

-- if getPlayerGroupId(cid) >= 5 then
-- doBroadcastMessage("o "..getCreatureName(cid).." esta tentando ganhar o torneio ilegalmente")
-- return true
-- end
if #getPlayersInArea(torneio.area) > 1 then
doPlayerSendTextMessage(cid, 26 ,"Você precisa derrotar todos os treinadores para vencer o torneio.")
return true 
end
doTeleportThing(cid, pos)
doBroadcastMessage("Parabens ao treinador "..getCreatureName(cid).." foi o ganhador do torneio de johto 150+ de hoje, verifique o RANK em nosso site: www.otpMysterious.ddns.net!")
doPlayerSave(cid) 
local atualPremioo = getGlobalStorageValue(844564)
doPlayerAddMoney(cid, atualPremioo * 200000)
setGlobalStorageValue(844564, -1)
addTopt(cid,1)
changeTorneioOtc(cid)
doPlayerSendTextMessage(cid,22,"You Advanced In Torneios Vencidos")
return true
end
