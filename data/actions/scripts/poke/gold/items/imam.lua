--[[
	Script: Exemplo de Quest
	Autor: MySticaL
	Email: matadormatou275@gmail.com
]]

	function onUse(cid, item, frompos, item2, topos) -- N�o mecha.


storage = 46546514 -- Storage a cada quest que for criada aumente um numero da storage pra qnd vc pegar o ba� de outra quest � aparecer que vc j� fez.
item = 12198 -- Id do item ira ganhar.
nomeitem = "Imam" -- Nome do item
quantidade = 1 -- Quantidade ira ganhar.
level = 1 -- Level que precisa pra fazer.

	if getPlayerLevel(cid) >= level and getPlayerStorageValue(cid,storage) == -1 then -- N�o mecha.
doPlayerSendTextMessage(cid,22,"Voce achou o "..nomeitem.." escondido.") -- Mensagem que aparecera quando ganhar o item.
doPlayerAddItem(cid, item, quantidade) -- N�o mecha.
setPlayerStorageValue(cid,storage,1) -- N�o mecha.

elseif getPlayerLevel(cid) <= level then -- N�o mecha
doPlayerSendTextMessage(cid,25,"Voc� precisa ser level "..level.." ou mais.") -- Mensagem que ira aparecer se o player tiver menos level que o necessario.

elseif getPlayerStorageValue(cid,storage) >= 1 then -- N�o mecha.
doPlayerSendTextMessage(cid,25,"Voc� j� fez est� quest") -- Quando tentar pegar mais de uma vez o ba�.
end
return true
end