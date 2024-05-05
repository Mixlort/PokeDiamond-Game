function onSay(player, words, param)
	if player:isSummonBlocked() then return false end
    -- if player:getStorageValue(storageGoback) > 0 then return false end
	local index = tonumber(param)
	if not index then return false end
	local pokeballs = player:getPokeballs()
	local ball = pokeballs[index]
    if not ball then
		print("WARNING! Player " .. player:getName() .. " had problems trying to use pokebar: selected ball not found.")
		return false
	end
    onUsePokemon(player, ball)
	return false
end
