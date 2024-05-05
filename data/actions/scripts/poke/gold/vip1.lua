function onUse(cid, item, frompos, item2, topos)
local config={
dias="1"
}
doPlayerAddPremiumDays(cid, config.dias)
doPlayerSendTextMessage(cid,22,"Você recebeu 1 dia de Premium Account!")
doRemoveItem(item.uid,1) 
return TRUE
end