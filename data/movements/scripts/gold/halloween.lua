function onStepIn(cid, item, frompos, item2, topos)
if not isPlayer(cid) then
return true
end
         doPlayerSendTextMessage(cid, 19, "Objetivo:")
		 doPlayerSendTextMessage(cid, 19, "1- Mate todos os Halloween Gengar's")
		 doPlayerSendTextMessage(cid, 19, "2- Apos matar todos os Halloween Gengar's, ache a Alavanca e clique sobre ela.")
end