blockedTiles = {459, 493, 4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625, 4820, 4821, 4822, 4823, 4824, 4825, }

cutItems = {
	[2767] = 6219,
	[2768] = 6219,
}

rockSmashItems = {
	[1285] = 1336,
}

digItems = {
	[468] = 469,
	[481] = 482,
	[483] = 484,
	[7932] = 7933,
	[8579] = 8585,
}

surfItems = {
	[4644] = {x = 0, y = -1}, -- NORTH
	[4645] = {x = 1, y = 0}, -- EAST
	[4646] = {x = 0, y = 1}, -- SOUTH
	[4647] = {x = -1, y = 0}, -- WEST
	[4648] = {x = -1, y = -1}, -- NORTHWEST
	[4649] = {x = 1, y = -1}, -- NORTHEAST
	[4650] = {x = -1, y = 1}, -- SOUTHWEST
	[4651] = {x = 1, y = 1}, -- SOUTHEAST
	[4652] = {x = -1, y = -1}, -- NORTHWEST
	[4653] = {x = 1, y = -1}, -- NORTHEAST
	[4654] = {x = -1, y = 1}, -- SOUTHWEST
	[4655] = {x = 1, y = 1}, -- SOUTHEAST
	[6630] = {x = -1, y = 0}, -- WEST
	[6628] = {x = 1, y = 0},  -- EAST
	[6629] = {x = 0, y = 1},  -- SOUTH
	[6627] = {x = 0, y = -1}, -- NORTH
}

function Player.setSurfing(self, bool)
    if bool and bool == 1 then
        self:setStorageValue(storageSurf, 1)
    else
        self:setStorageValue(storageSurf, -1)
    end
end

function Player.isSurfing(self)
    return self:getStorageValue(storageSurf) == 1
end

function Player.setRiding(self, bool)
    if bool and bool == 1 then
        self:setStorageValue(storageRide, 1)
    else
        self:setStorageValue(storageRide, -1)
    end
end

function Player.isRiding(self)
    return self:getStorageValue(storageRide) == 1
end

function Player.setFlying(self, bool)
    if bool and bool == 1 then
        self:setStorageValue(storageFly, 1)
    else
        self:setStorageValue(storageFly, -1)
    end
end

function Player.isFlying(self)
    return self:getStorageValue(storageFly) == 1
end

function Item.setAbilityCd(self, ability, time)
    if not self:isItem() then return false end
    self:setSpecialAttribute(ability, ((time * 60) + os.time()))
    return true
end

function Item.getAbilityCd(self, ability)
    if not self:isItem() then return false end
    local atribute = self:getSpecialAttribute(ability)
    if atribute and atribute - os.time() > 0 then 
        return atribute - os.time()
    else
        return 0
    end
end

function Player.addAbility(player, ball, ability, teleportPos)
    if not player or not player:isPlayer() then return false end
    if not ball or not ball:isItem() then return false end
    local pokeName = ball:getPokeName()
    local monsterType = MonsterType(pokeName)
    local outfit, speed
    if ability == "surf" then
        if teleportPos then player:teleportTo(teleportPos) end
        local tileUnder = Tile(player:getPosition())
        local groundUnder = tileUnder:getGround()
        if not isInArray(waterIds, groundUnder:getId()) then
            player:setSurfing()
            player:teleportTo(player:getTown():getTemplePosition())
            player:changeSpeed(player:getBaseSpeed()-player:getSpeed())
            transformBallItem(ball, STATUS_BALL_NORMAL)
            player:setStorageValue(storageGoback, -1)
            return true
        end
        player:setSurfing(1)
        speed = surfs[pokeName].speed
        outfit = surfs[pokeName].lookType + 351
    elseif ability == "ride" then
        player:setRiding(1)
        speed = rides[pokeName][2]
        outfit = rides[pokeName][1] + 351
    elseif ability == "fly" then
        player:setFlying(1)
        speed = flys[pokeName][2]
        outfit = flys[pokeName][1] + 351
    end
    if not outfit then return false end
    if not speed then print("poke sem speed no surf:"..pokeName) return false end
    transformBallItem(ball, STATUS_BALL_USE)
    player:setStorageValue(storageGoback, 1)
    speed = speed * 0.5
    player:changeSpeed(speed)
    doSetCreatureOutfit(player, {lookType=outfit}, -1)
    if player:getSummon() then
        player:getSummon():remove()
    end
    return true
end

function Player.removeAbility(player, ball, ability, toPosition, target)
    if not player or not player:isPlayer() then return false end
    if not ball or not ball:isItem() then return false end
    local toPosition = toPosition or player:getPosition()
    local ballName = ball:getPokeName()
    local newPos = toPosition
    if ability == "surf" then
        if getDistanceBetween(player:getPosition(), toPosition) > 1 then
            player:sendCancelMessage("You're too far to stop surfing.")
            return true
        end	
        if target then
            newPos = {x=toPosition.x-surfItems[target:getId()].x, y=toPosition.y-surfItems[target:getId()].y, z=toPosition.z}
            if getTileThingByPos(newPos) == 0 or getTileInfo(newPos).house then
                player:sendCancelMessage("You can't go there.")
                return true
            end
            player:teleportTo(newPos)
        end
        player:setSurfing()
        player:say(ballName..", i'm tired of surfing!", TALKTYPE_ORANGE_1)
    elseif ability == "ride" then
        player:setRiding()
        player:say(ballName..", i'm tired of riding!", TALKTYPE_ORANGE_1)
    elseif ability == "fly" then
        local pos = player:getPosition()
        local tileUnder = Tile({x=pos.x, y=pos.y, z=pos.z, stackpos=0})
        local groundUnder = tileUnder:getGround()
        if not tileUnder or not groundUnder then return false end
        if isInArray(blockedTiles, groundUnder:getId()) then
            player:sendCancelMessage("You can't get off your pokemon here.")
            return true
        end
        player:setFlying()
        player:say(ballName..", i'm tired of flying!", TALKTYPE_ORANGE_1)
    end
    player:removeCondition(CONDITION_OUTFIT)
    player:changeSpeed(player:getBaseSpeed()-player:getSpeed())
    doReleaseSummon(player:getId(), player:getPosition(), false, false)
    return true
end
