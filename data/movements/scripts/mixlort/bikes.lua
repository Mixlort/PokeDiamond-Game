local bikes = {
    [12774] = {outfitMale = 21, outfitFemale = 22, effect = 3, bonusSpeed = 5}, -- Normal
    [12936] = {outfitMale = 2032, outfitFemale = 2031, effect = 519, bonusSpeed = 5}, -- Water
    [12938] = {outfitMale = 2036, outfitFemale = 2035, effect = 521, bonusSpeed = 5}, -- Fire
    [12937] = {outfitMale = 2034, outfitFemale = 2033, effect = 442, bonusSpeed = 5}, -- Leaf
    [12935] = {outfitMale = 2030, outfitFemale = 2029, effect = 520, bonusSpeed = 5}, -- Thunder
}

function onEquip(player, item, slot)
    if player:getSlotItem(CONST_SLOT_FEET) and player:getSlotItem(CONST_SLOT_FEET).itemid == item.itemid and player:getStorageValue(storages.logNow) < 0 then
        return true
    end
    if not canExecuteSpeeds(player) then
        return false
    end
    if not bikes[item.itemid] then
        return false
    end
    
    player:setStorageValue(storageBike, 1)
	player:changeSpeed(-player:getSpeed())
	local delta = player:getBaseSpeed() * bikes[item.itemid].bonusSpeed
	player:changeSpeed(delta)

    local outfit = 0
	if player:getSex() == PLAYERSEX_MALE then outfit = bikes[item.itemid].outfitMale else outfit = bikes[item.itemid].outfitFemale end
	doChangeOutfit(player, {lookType = outfit})

    -- player:getPosition():sendMagicEffect(bikes[item.itemid].effect)
	return true
end

function onDeEquip(player, item, slot)
    if player:getSlotItem(CONST_SLOT_FEET) and player:getSlotItem(CONST_SLOT_FEET).itemid == item.itemid then
        return true
    end
    if not canExecuteSpeeds(player) then
        return false
    end
    if not bikes[item.itemid] then
        return false
    end

	player:setStorageValue(storageBike, -1)
	player:changeSpeed(player:getBaseSpeed()-player:getSpeed())

	player:removeCondition(CONDITION_OUTFIT)

    -- player:getPosition():sendMagicEffect(bikes[item.itemid].effect)
	return true
end