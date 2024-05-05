local function doExecuteAction(func, pokemon, pos, param, limit)
	if not isOnline(pokemon) then return false end
    local pokemon = Creature(pokemon)
    if not pokemon then return false end
	if pokemon:isCreature() then
		if pokemon:moveTo(pos, 0, 1) then
			if getDistanceBetween(pokemon:getPosition(), pos) == 1 then
				func(pokemon, pos, param)
			elseif not limit or limit <= 20 then
				limit = limit ~= nil and limit+1 or 1
				addEvent(doExecuteAction, 500, func, pokemon:getId(), pos, param, limit)
			end
		end
	end
end

local function unTransformItem(itemid, toItemid, pos)
	local item = getTileItemById(pos, itemid)
	if item ~= 0 then
		doTransformItem(item.uid, toItemid)
	end
end

local function doMoveToTransform(pokemon, pos, param)
	local pokemon = Creature(pokemon)
	local item = getTileItemById(pos, param.itemid)
	if item ~= 0 then
        if item.itemid == 1285 then
            pos:sendMagicEffect(858)
        elseif item.itemid == 2767 or item.itemid == 2768 then
            pos:sendMagicEffect(857)
        else
            pos:sendMagicEffect(859)
        end
		doTransformItem(item.uid, param.toItemid)
		if param.createid ~= nil then
			Game.createItem(param.createid, 1, pos)
		end
		addEvent(unTransformItem, 20000, param.toItemid, param.itemid, pos)
	end
end

local function doMoveToPlayer(pokemon, pos, param, limit)
	local pokemon = Creature(pokemon)
	local player = Creature(param.player)
    if player:getStorageValue(storageBike) == 1 then
        player:sendCancelMessage("Você não pode usar habilidades com a bike no slot.")
        return true
    end
	if pokemon:isCreature() and player:isCreature() then
		if getDistanceBetween(player:getPosition(), pokemon:getPosition()) <= 1 then
            local ball = player:getUsingBall()
			if doRemoveSummon(player:getId(), false, nil, false) then
                player:addAbility(ball, param.ability, param.teleportPos)
			end
		elseif param.ability == "surf" then
			if not limit or limit <= 6 then
				pokemon:changeSpeed(-pokemon:getSpeed())
				limit = limit ~= nil and limit+1 or 1
				addEvent(doMoveToPlayer, 500, pokemon:getId(), pos, param, limit)
			else
				local cSpeed = pokemon:getSpeed()
                cSpeed = cSpeed + 20
				pokemon:changeSpeed(pokemon:getBaseSpeed() + cSpeed)
			end
		end	
	end
end

local function rideOn(player, poke, pokeName, toPosition, lookType)
    if player:getCondition(CONDITION_INFIGHT) then
        player:sendCancelMessage("You can't ride while battling.")
        return true
    end
    player:say(pokeName..", let's ride!", TALKTYPE_ORANGE_1)
    doExecuteAction(doMoveToPlayer, poke, toPosition, {player=player, ability="ride"})
end

local function flyOn(player, poke, pokeName, toPosition, lookType)
    if not player:isPremium() then
        player:sendCancelMessage("Sorry, you have to be premium account to fly.")
        return true
    end
    if player:getCondition(CONDITION_INFIGHT) then
        player:sendCancelMessage("You can't fly while battling.")
        return true
    end
    player:say(pokeName..", let's fly!", TALKTYPE_ORANGE_1)
    doExecuteAction(doMoveToPlayer, poke, toPosition, {player=player, ability="fly"})
end

local function surfOn(player, poke, pokeName, toPosition, targetId)
    if not player:isPremium() then
        player:sendCancelMessage("Sorry, you have to be premium account to surf.")
        return true
    end
    if player:getCondition(CONDITION_INFIGHT) then
        player:sendCancelMessage("You can't surf while battling.")
        return true
    end
    player:say(pokeName..", let's surf!", TALKTYPE_ORANGE_1)
    doExecuteAction(doMoveToPlayer, poke, toPosition, {player=player, ability="surf", teleportPos={x=toPosition.x+surfItems[targetId].x, y=toPosition.y+surfItems[targetId].y, z=toPosition.z}})
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)

    -- sair do surf, ride e fly
	if player:isSurfing() or player:isRiding() or player:isFlying() then
		local ball = player:getUsingBall()
		if player:isSurfing() and surfItems[target:getId()] then
			player:removeAbility(ball, "surf", toPosition, target)
		elseif target == player then
			local pos = player:getPosition()
            local tileUnder = Tile(player:getPosition())
			local groundUnder = tileUnder:getGround()
            if not tileUnder or not groundUnder then return false end
			if player:isRiding() then
                player:removeAbility(ball, "ride")
			elseif groundUnder:getId() ~= flyFloor and player:isFlying() then
                player:removeAbility(ball, "fly")
			end
		end
		return true
	end
	
    -- ativar habilidades
	local poke = player:getSummon()
	if poke == false then player:sendCancelMessage("You need a pokemon to do this.") return true end
	if not poke then player:sendCancelMessage("You need a pokemon with hability to do this.") return true end
    
    local targetId = target:getId()
    local pokeName = poke:getName()
    local monsterType = MonsterType(pokeName)
	if cutItems[targetId] then
		if isInArray(specialabilities["cut"], pokeName) then
			player:say(poke:getName()..", cut it!", TALKTYPE_ORANGE_1)
			doExecuteAction(doMoveToTransform, poke, toPosition, {itemid=targetId, toItemid=cutItems[targetId]})
		else
			player:sendCancelMessage("This pokemon doesn't have cut hability.")
		end
		return true
	elseif rockSmashItems[targetId] then
		if isInArray(specialabilities["rock Smash"], pokeName) then
			player:say(poke:getName()..", break it!", TALKTYPE_ORANGE_1)
			doExecuteAction(doMoveToTransform, poke, toPosition, {itemid=targetId, toItemid=rockSmashItems[targetId]})
		else
			player:sendCancelMessage("This pokemon doesn't have rock smash hability.")
		end
		return true
	elseif digItems[targetId] then
		if isInArray(specialabilities["dig"], pokeName) then
			player:say(poke:getName()..", dig!", TALKTYPE_ORANGE_1)
			doExecuteAction(doMoveToTransform, poke, toPosition, {itemid=targetId, toItemid=digItems[targetId]})
		else
			player:sendCancelMessage("This pokemon doesn't have dig hability.")
		end
		return true
	elseif surfItems[targetId] then
		if isInArray(specialabilities["surf"], pokeName) then
            surfOn(player, poke:getId(), pokeName, toPosition, targetId)
        else
			player:sendCancelMessage("This pokemon doesn't have surf hability.")
		end
		return true
	elseif target == player then
		if isInArray(specialabilities["ride"], pokeName) then
            rideOn(player, poke:getId(), pokeName, toPosition)
        elseif isInArray(specialabilities["fly"], pokeName) then
            flyOn(player, poke:getId(), pokeName, toPosition)
        else
			player:sendCancelMessage("This pokemon doesn't have hability.")
		end
		return true
	elseif not poke:moveTo(toPosition) then
		player:sendCancelMessage("Sorry, this local is too far or not possible go to.")
		return true
	end
	
    -- blink
	if isInArray(specialabilities["blink"], pokeName) then
		local pb = player:getUsingBall()
		if not pb or pb.uid == 0 then
			player:sendCancelMessage("Sorry, it's not posible.")
			return true
		end
		local cd = pb:getAbilityCd("blink_order")
		if cd <= 0 then
			pb:setAbilityCd("blink_order", 15)
			poke:getPosition():sendMagicEffect(212)
			poke:teleportTo(toPosition, false)
            poke:moveTo(toPosition)
			toPosition:sendMagicEffect(212)
			player:say(poke:getName()..", blink!", TALKTYPE_ORANGE_1)
			return true
        else
    		player:sendCancelMessage("Você tem que esperar ".. math.ceil(cd / 60) .." minuto(s) para usar o blink novamente.")
		end
	end
	
	player:say(poke:getName()..", move!", TALKTYPE_ORANGE_1)
	return true
end