function onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
    local player = creature:getMaster()
    if player then
    	local item = player:getUsingBall()
    	if item then
        	item:setSpecialAttribute("pokeHealth", 0)
       		player:sendCancelMessage("Your pokemon has died.")
    		creature:unregisterEvent("MonsterDeath")
    		player:say("Thanks, " .. creature:getName() .. "!", TALKTYPE_MONSTER_SAY)
            transformBallItem(item, STATUS_BALL_DEATH)
            player:setStorageValue(storageGoback, -1)
            player:pokeBarUpdatePoke(item)
    	end
    end
    return true
end
