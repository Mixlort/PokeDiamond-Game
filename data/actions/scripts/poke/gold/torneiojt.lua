function onUse(cid, item, fromPosition, itemEx, toPosition)

local pos = {x = 931, y = 1700, z = 5}

if getPlayerGroupId(cid) >= 5 then
doBroadcastMessage("o "..getCreatureName(cid).." esta tentando ganhar o torneio ilegalmente")
return true
end
if #getPlayersInArea(torneiokanto.areakanto) > 1 then
doPlayerSendTextMessage(cid, 26 ,"Você precisa derrotar todos os treinadores para vencer o torneio.") 
return true 
end

doTeleportThing(cid, pos)
doBroadcastMessage("Parabens ao treinador "..getCreatureName(cid).." foi o ganhador do torneio de hoje, verifique o RANK em nosso site: www.otpMysterious.ddns.net!")
doPlayerSave(cid) 
local atualPremioo = getGlobalStorageValue(5778415)
doPlayerAddMoney(cid, atualPremioo * 200000)
setGlobalStorageValue(5778415, -1)
addTopt(cid,1)
changeTorneioOtc(cid)
doPlayerSendTextMessage(cid, 22, "You Advanced In Torneios Vencidos")
return true
end

