--[[
	Script: Exemplo de Quest
	Autor: MarshMello
	Email: bndgraphics0@gmail.com
]]

	function onUse(cid, item, frompos, item2, topos) -- N�o mecha.

if getPlayerGroupId(cid) >= 5 then
doBroadcastMessage("o "..getCreatureName(cid).." esta tentando fazer a quest Policial Jenny ilegalmente")
return true
end
storage = 325423665 -- Storage a cada quest que for criada aumente um numero da storage pra qnd vc pegar o ba� de outra quest � aparecer que vc j� fez.
item = 2124 -- Id do item ira ganhar.
nomeitem = "Anel De Casamento" -- Nome do item
quantidade = 1 -- Quantidade ira ganhar.
level = 50 -- Level que precisa pra fazer.

	if getPlayerLevel(cid) >= level and getPlayerStorageValue(cid,storage) == -1 then -- N�o mecha.
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Paabens Voce Competou o treinamento Como premio voce ganhou "..nomeitem.."!") -- Mensagem que aparecera quando ganhar o item.
doPlayerAddItem(cid, item, quantidade) -- N�o mecha.
doTeleportThing(cid,{x=1062, y=885, z=7})
setPlayerStorageValue(cid,storage,1) -- N�o mecha.

elseif getPlayerLevel(cid) <= level then -- N�o mecha
doPlayerSendTextMessage(cid,25,"Voc� precisa ser level "..level.." ou mais.") -- Mensagem que ira aparecer se o player tiver menos level que o necessario.

elseif getPlayerStorageValue(cid,storage) >= 1 then -- N�o mecha.
doPlayerSendTextMessage(cid,25,"Voc� j� fez est� quest") -- Quando tentar pegar mais de uma vez o ba�.
end
return true
end