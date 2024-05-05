local shop = {
["Ice Cube"] = {itemid = "7441", preco = 10},
["Boost Stone"] = {itemid = "12618", preco = 13},
["Addon Box"] = {itemid = "2183", preco = 15},
["1 Dia De Vip"] = {itemid = "10503", preco = 16},
}
function onSay(cid, words, param, channel)
local points = getPlayerItemCount(cid, 10305)

if(param == "") then 
local str = {}
      table.insert(str, "1- [Boost Stone] -\nPreco: +[" .. shop["Boost Stone"].preco .." Torneio Coin's]+\n- Digite: /shop Boost Stone - para comprar!\n\n")   
      table.insert(str, "2- [Addon Box] -\nPreco: +[" .. shop["Addon Box"].preco .." Torneio Coin's]+\n- Digite: /shop Addon Box - para comprar!\n\n")   
      table.insert(str, "3- [1 Dia de VIP] -\nPreco: +[" .. shop["1 Dia De Vip"].preco .." Torneio Coin's]+\n- Digite: /shop 1 Dia de Vip - para comprar!\n\n")   
doShowTextDialog(cid, 8762, "[+] -- PokeDiamond -- [+]\n\n --{ + Loja de Torneio + }--\n\n\n" .. table.concat(str) .. "\n\n") 
return true
end


pokemon = doCorrectString(param) 
local b = shop[pokemon]
if not b then 
		doPlayerSendTextMessage(cid, 25, "Este item nao existe.(" .. pokemon .. ")")
		return true
		end
local preco = b.preco
if points >= preco then
	if b.pokemon then
	addPokeToPlayer(cid, pokemon, 0, "Masculino", "normal", false) 
	doPlayerSendTextMessage(cid, 25, "Voce adquiriu um(a) " .. pokemon .. ".")
doPlayerRemoveItem(cid, 10305, preco)
	elseif b.itemid then
	doPlayerSendTextMessage(cid, 25, "Voce adquiriu um(a) " .. pokemon .. ".")
	doPlayerAddItem(cid, b.itemid, 1)
	doPlayerRemoveItem(cid, 10305, preco)
	elseif not b.pokemon then
		if not b.itemid then
		doPlayerSendTextMessage(cid, 25, "Ocorreu um Error, reporte a um administrador.(" .. pokemon .. ")")
		end
		return true
	end
return true
else
		doPlayerSendTextMessage(cid, 25, "Voce nao possui torneio coin's necessarios, necessita de: " .. preco .. ", Voce possui: " .. points .. "")
		return true
		
end

end