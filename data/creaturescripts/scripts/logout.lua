function onLogout(player)
	local playerId = player:getId()
	if nextUseStaminaTime[playerId] then
		nextUseStaminaTime[playerId] = nil
	end

    if hasSummons(player) then
        doRemoveSummon(playerId)
        local ball = player:getUsingBall()
        if ball then
            transformBallItem(ball, STATUS_BALL_NORMAL)
            player:setStorageValue(storageGoback, -1)
        end
    end

    if player:getStorageValue(storageBike) > 0 then
        player:removeCondition(CONDITION_OUTFIT)
        player:changeSpeed(-player:getStorageValue(storageBike))
        player:setStorageValue(storageBike, -1)
    end

    player:setStorageValue(storages.logNow, 1)

	return true
end
