local delay = 0.1
local bonusSpeed = 3
local outfitMale = 2036
local outfitFemale = 2035
local condition = Condition(CONDITION_OUTFIT)
condition:setTicks(-1)

function onEquip(cid, item, slot)
	local player = Player(cid)

	if os.time() > player:getStorageValue(storageDelay) then
	       	player:setStorageValue(storageDelay, os.time() + delay)
	else
		player:sendCancelMessage(RETURNVALUE_YOUAREEXHAUSTED)
		return true
	end

	if player:getStorageValue(storageRide) == 1 then
		player:sendCancelMessage("Sorry, not possible while on ride.")
		return true
	end

	if player:getStorageValue(storageFly) == 1 then
		player:sendCancelMessage("Sorry, not possible while on fly.")
		return true
	end

	if player:getStorageValue(storageSurf) > 0 then
		player:sendCancelMessage("Sorry, not possible while on surf.")
		return true
	end

	if player:getStorageValue(storageDive) > 0 then
		player:sendCancelMessage("Sorry, not possible while on dive.")
		return true
	end

	if player:getStorageValue(storageEvent) > 0 then
		player:sendCancelMessage("Sorry, not possible while on event.")
		return true
	end

	local delta = player:getSpeed() * bonusSpeed
	if player:getSex() == PLAYERSEX_MALE then outfit = outfitMale else outfit = outfitFemale end
	doChangeOutfit(player:getId(), {lookType = outfit})
	player:setStorageValue(storageBike, 1)
	player:changeSpeed(delta)
    player:getPosition():sendMagicEffect(1021)
	return true
end

function onDeEquip(cid, item, slot)
	local player = Player(cid)
	if os.time() > player:getStorageValue(storageDelay) then
	       	player:setStorageValue(storageDelay, os.time() + delay)
	else
		player:sendCancelMessage(RETURNVALUE_YOUAREEXHAUSTED)
		return true
	end

	if player:getStorageValue(storageRide) == 1 then
		player:sendCancelMessage("Sorry, not possible while on ride.")
		return true
	end

	if player:getStorageValue(storageFly) == 1 then
		player:sendCancelMessage("Sorry, not possible while on fly.")
		return true
	end

	if player:getStorageValue(storageSurf) > 0 then
		player:sendCancelMessage("Sorry, not possible while on surf.")
		return true
	end

	if player:getStorageValue(storageDive) > 0 then
		player:sendCancelMessage("Sorry, not possible while on dive.")
		return true
	end

	if player:getStorageValue(storageEvent) > 0 then
		player:sendCancelMessage("Sorry, not possible while on event.")
		return true
	end

	player:removeCondition(CONDITION_OUTFIT)
	player:changeSpeed(player:getBaseSpeed()-player:getSpeed())
	player:setStorageValue(storageBike, -1)
    player:setStorageValue(estr, os.time()+2)
    player:getPosition():sendMagicEffect(1021)
	return true
end