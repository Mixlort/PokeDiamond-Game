function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	if player:getAccountType() < ACCOUNT_TYPE_GOD then
		return false
	end

	local split = param:split(",")
	local name = split[1]
	local monsterType = MonsterType(name)
	if not monsterType then
		player:sendCancelMessage("Pokemon not found.")
		return false		
	end

	name = firstToUpper(name)

	local boost = tonumber(split[2])
	if boost == nil then
		boost = 0
	end

    addPokeToPlayer(player, name, boost, nil, "normal")
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    return true
end
