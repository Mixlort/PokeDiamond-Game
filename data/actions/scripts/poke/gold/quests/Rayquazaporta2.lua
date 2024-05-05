function onUse(cid, item, frompos, item2, topos)

local pos = {x = 2305, y = 1593, z = 5}

if getPlayerStorageValue(cid, 54893) >= 1 then
doTeleportThing(cid , pos)
doSendMagicEffect(getPlayerPosition(cid), 21)
doPlayerSendTextMessage(cid, 25 ,"Bem Vindo")
return true
else
doPlayerSendTextMessage(cid, 25, "Primeiro use a chave!")
return true
end
end