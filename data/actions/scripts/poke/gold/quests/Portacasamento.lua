function onUse(cid, item, frompos, topos)

if getPlayerStorageValue(cid, 181656) >= 1 then
doTeleportThing(cid,{x=982, y=853, z=7})
doSendMagicEffect(getPlayerPosition(cid), 21)
doPlayerSendTextMessage(cid, 25, "Bem Vindo")
return true
else
doPlayerSendTextMessage(cid, 22, "Voce precisa completar a quest da policial jenny")
return true
end
end