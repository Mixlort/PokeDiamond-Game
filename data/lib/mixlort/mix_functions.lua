

staminaMinutesMaximo = 56 -- 150%
staminaMinutesPadrao = 54  -- 100%
staminaMinutes1 = 15 -- 50%
staminaMinutes2 = 5 -- 15%
staminaMinutes3 = 2 -- 0%

function isShinyName(name)
    return tostring(name) and string.find(doCorrectString(name), "Shiny") --alterado v1.9
end

function retireShinyName(str)
    if not str then 
        print("erro retireShinyName")
        return 
    end
    if string.find(str, "Shiny") then
        return str:match("Shiny (.*)") 
    end
    return str
end  

function transformBallItem(item, id, ballKey)
    if item and isNumber(item) then item = Item(item) end
    if not item then return false end
    if not ballKey then ballKey = getBallKey(item:getId()) end
    if id == STATUS_BALL_NORMAL then
        item:setSpecialAttribute("isBeingUsed", 0)
        ballKey = item:getSpecialAttribute("ballKey") or ballKey
        item:transform(balls[ballKey].usedOff)
        item:setSpecialAttribute("statusBall", id)
        item:transform(balls[ballKey].usedOn)
    elseif id == STATUS_BALL_USE then
        item:setSpecialAttribute("isBeingUsed", 1) 
        if not item:getSpecialAttribute(item, "ballKey") then
            item:setSpecialAttribute("ballKey", ballKey)
        end
        item:transform(balls[ballKey].usedOn)
        item:setSpecialAttribute("statusBall", id)
        item:transform(balls[ballKey].usedOff)
        -- item:transform(balls["premier"].usedOff)
    elseif id == STATUS_BALL_DEATH then
        item:setSpecialAttribute("isBeingUsed", 0)
        ballKey = item:getSpecialAttribute("ballKey") or ballKey
        item:transform(balls[ballKey].usedOn)
        item:setSpecialAttribute("statusBall", id)
        item:transform(balls[ballKey].usedOff)
    end
end

function onUseRevive(player, item, fromPosition, target)
    if not target then return false end
    if type(target) ~= "userdata" then return false end
    if target:isCreature() or not target:isItem() then return false end

	if not target:isPokeball() then
		player:sendCancelMessage("Sorry, not possible. You can only use on pokeballs.")
		return true
	end

    if hasSummons(player) then
        player:sendCancelMessage("Você não pode usar revive com pokemons pra fora.")
        return true
    end   

    local summonMaxHealth = target:getPokeMaxHealth()
	local summonName = target:getPokeName()

    for c = 1, 15 do
        local str = "move"..c
        setCD(target.uid, str, 0)
    end

    setCD(target.uid, "control", 0)
    setCD(target.uid, "blink", 0)
    doCureBallStatus(target.uid, "all")
    doCureStatus(cid, "all", true)
    cleanBuffs2(target.uid)

	target:setSpecialAttribute("pokeHealth", summonMaxHealth)
    transformBallItem(target, STATUS_BALL_NORMAL)
    player:setStorageValue(storageGoback, -1)
    player:pokeBarUpdatePoke(target) -- Refresh Pokemon Bar
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
	item:remove(1)

    return true
end

function getHealthPercent(ball)
    if not ball then return nil end
    local now = ball:getPokeHealth() or 1
    local max = ball:getPokeMaxHealth() or 100
    local healthNow = math.floor(now) * 100
    local healthMax = math.floor(max)

    return math.floor(healthNow / healthMax)
end

function Player.updatePokebar(player)
    for i, ball in pairs(player:getPokeballs()) do
        if not ball then
            player:pokeBarRemoveOnePoke(ball)
            return false
        end
        local name = ball:getPokeName()
        if not name then return false end
        local outfit = getOutfitOtclient({ lookType = MonsterType(name):getOutfit().lookType })
        local health = getHealthPercent(ball) or 0
        local fastcallNumber = ball:getBallUniqueId()
        local tipo = ""
        if ball:getSpecialAttribute("isBeingUsed") == 1 then tipo = "USE" end
        local data = { 
            fastcallNumber = fastcallNumber, 
            health = health, 
            name = name, 
            outfit = outfit,
            text = tipo
        }
        player:sendExtendedOpcode(POKEBAR_OPCODE, json.encode({action = ACTION_POKEBAR_UPDATE, data = data}))
    end
end

function Player.pokeBarUpdatePoke(player, ball)
    local name = ball:getPokeName()
    local outfit = getOutfitOtclient({ lookType = MonsterType(name):getOutfit().lookType })
    local health = getHealthPercent(ball) or 0
    local fastcallNumber = ball:getBallUniqueId()
    local tipo = ""
    if ball:getSpecialAttribute("isBeingUsed") == 1 then tipo = "USE" end
    local data = { 
        fastcallNumber = fastcallNumber,
        health = health,
        name = name, 
        outfit = outfit,
        text = tipo
    }
    player:sendExtendedOpcode(POKEBAR_OPCODE, json.encode({action = ACTION_POKEBAR_UPDATE, data = data}))
end

function Player.pokeBarRemoveOnePoke(player, item)
    local name = item:getPokeName()
    local number = item:getBallUniqueId()
    player:sendExtendedOpcode(POKEBAR_OPCODE, json.encode({action = ACTION_POKEBAR_REMOVE, data = number}))
end

function onUsePokemon(player, item)
    if player:isSummonBlocked() then if debugGoback then print("Test1") end return true end
    if player:getStorageValue(storageGoback) > 0 and not player:getUsingBall() then if debugGoback then print("Test2") end return true end

	local ballKey = getBallKey(item:getId())
	local summon = player:getSummon()
	local fromPosition2 = getCreaturePosition(player)
	local toPosition2 = getCreaturePosition(summon)
	local creature = Creature(summon)

	if hasSummons(player) then
		local usingBall = player:getUsingBall()
        local ballKeyTwo = getBallKey(usingBall:getId())		
        doRemoveSummon(player:getId(), balls[ballKeyTwo].effectRelease, false, true, balls[ballKeyTwo].missile)
        if usingBall == item then return true end

        if item:getTopParent() == player then

            local health = item:getPokeHealth() or 0
            if health <= 0 then
                if debugGoback then print("33") end
                player:sendCancelMessage("Sorry, not possible. Your summon is dead.")
                transformBallItem(item, STATUS_BALL_DEATH)
                player:setStorageValue(storageGoback, -1)
                return true
            end 

            if player:canReleaseSummon(item) then
                if player:getSummons()[1] then player:setStorageValue(storageGoback, -1) return true end
                local playerId = player:getId()
                addEvent(function()
                    if isOnline(playerId) then
                        doReleaseSummon(playerId, getPlayerPosition(playerId), balls[ballKey].effectRelease, true, balls[ballKey].missile)
                    end
                end, 600)
            end
        end
        return true
    end

    if item:getTopParent() == player then

        local health = item:getPokeHealth() or 0
        if health <= 0 then
            if debugGoback then print("35") end
            player:sendCancelMessage("Sorry, not possible. Your summon is dead.")
            transformBallItem(item, STATUS_BALL_DEATH)
            player:setStorageValue(storageGoback, -1)
            return true
        end 

        if player:canReleaseSummon(item) then
            if player:getSummons()[1] then player:setStorageValue(storageGoback, -1) return true end
            local playerId = player:getId()
            addEvent(function()
                if isOnline(playerId) then
                    doReleaseSummon(playerId, getPlayerPosition(playerId), balls[ballKey].effectRelease, true, balls[ballKey].missile)
                end
            end, 250)
        end
    end
	return true
end

function Item.getBallUniqueId(item)
    local attribute = item:getSpecialAttribute(BALLS_UNIQUE_ATT)
    if not attribute then return item:setBallUniqueId() end
    return attribute
end

function Item.setBallUniqueId(item)
    local attribute = item:getSpecialAttribute(BALLS_UNIQUE_ATT)
    if attribute then return attribute end    
    local resultId = db.storeQuery("SELECT `value` FROM `pokeballs_uniqueid` WHERE `value`")
    if resultId ~= false then
        local value = result.getNumber(resultId, "value")
        local valueAtt = value + 1
        result.free(resultId)
        db.query("UPDATE `pokeballs_uniqueid` SET `value` = " .. valueAtt)
        item:setSpecialAttribute(BALLS_UNIQUE_ATT, valueAtt)
        return valueAtt
    end
end

function Item.getPokeName(item)
    local attribute = item:getSpecialAttribute("pokeName")
    if not attribute then return false end
    return attribute
end

function Item.getPokeBoost(item)
    local attribute = item:getSpecialAttribute("boost") or 0
    if not attribute then return false end
    return attribute
end

function Item.getPokeHealth(item)
    local attribute = tonumber(item:getSpecialAttribute("pokeHealth"))
    if not attribute then return false end
    return attribute
end

function Item.getPokeMaxHealth(item)
    local attribute = item:getSpecialAttribute("pokeMaxHealth")
    if not attribute then return false end
    return attribute
end

function addPokeToPlayer(player, name, boost, none, ballKey, dp, unique)
    local player = Player(player)
    if not player then return false end
    local name, monsterType, boost = firstToUpper(name), MonsterType(name), boost or 0
    if not monsterType then return false end
    if (player:getPokeballCount() >= 6) and not player:getGroup():getAccess() then dp = true end 
    local playerMana = player:getMana() or 0
    if playerMana >= 6 and not player:getGroup():getAccess() then dp = true end
    local addBall
    local ballId
    if isNumber(ballKey) then
        ballId = ballKey
    else
        ballId = balls[ballKey].usedOn
    end
    if dp then
        local depot = player:getInbox()
        addBall = depot:addItem(ballId, 1, INDEX_WHEREEVER, FLAG_NOLIMIT)
        doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "Você já está carregando a capacidade máxima, a ball foi enviada para o DP.")
    else
        if unique then 
            addBall = player:addUniqueItem(ballId, 1, false)
        else
            addBall = player:addItem(ballId, 1, false)
        end
    end
    if not addBall then
        if dp then -- try send to CP because BP is full
            addEvent(doPlayerSendTextMessage, 3000, player:getId(), MESSAGE_STATUS_WARNING, "Pokemon lost. Your CP is full!")
        else
            local depot = player:getInbox()
            addBall = depot:addItem(ballId, 1, INDEX_WHEREEVER, FLAG_NOLIMIT)
            addEvent(doPlayerSendTextMessage, 3000, player:getId(), MESSAGE_EVENT_ADVANCE, "Since you are at maximum capacity, your ball was sent to CP.")
            dp = true
        end
    end
    if addBall then
        local maxHealth = getStatusS(name, boost, player:getLevel()).life
        addBall:setSpecialAttribute("pokeName", name)
        addBall:setSpecialAttribute("boost", boost)
        addBall:setSpecialAttribute("pokeHealth", maxHealth)
        addBall:setSpecialAttribute("pokeMaxHealth", maxHealth)
		if name == "Hitmonchan" or name == "Shiny Hitmonchan" then    
            addBall:setSpecialAttribute("hands", 0)
		end
        transformBallItem(addBall, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        if not dp then
            player:pokeBarUpdatePoke(addBall)
            -- limit pokeballs
            local ballCount = player:getPokeballCount() or 0
            local playerMana = player:getMana() or 0
            player:addMana(ballCount - playerMana)
        end
        return true
    else
        print("ERROR! Player " .. player:getName() .. " lost pokemon " .. name .. " for unknown reason.")
    end
    return false
end

function Player.addUniqueItem(player, itemId, count)
    item = Game.createItem(itemId, count)
    if not item then return false end
    local itemType = ItemType(itemId)
    if not itemType then return false end
    local description = itemType:getDescription()
    if description ~= "" then
        description = description .. "\n"
    end
    item:setAttribute(ITEM_ATTRIBUTE_ACTIONID, UNIQUE_ITEM_ACTIONID)
    item:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, description .. "(Item Unico)")
    if player:addItemEx(item) ~= RETURNVALUE_NOERROR then
        item:remove()
        local depot = player:getInbox()
        item = depot:addItem(itemId, count, INDEX_WHEREEVER, FLAG_NOLIMIT)
        doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "Você não tem espaço, o item foi enviado para o DP.")
    end
    return item
end

function Container.getItemCount(self, itemId)
    local size = self:getSize()
    local counti = 0
    for i = 0, size - 1 do
        local item = self:getItem(i)
        if item:getId() == itemId then
            counti = counti + 1
        elseif item:isContainer() then
            if item:getItemCount() then
                counti = counti + item:getItemCount()
            end
        end
    end
    return counti
end

function Item.isUniqueItem(item)
    local itemAtt = item:getAttribute(ITEM_ATTRIBUTE_ACTIONID)
    if itemAtt and itemAtt == UNIQUE_ITEM_ACTIONID then 
        return true 
    else
        return false
    end
end

function Container.getUniqueItems(self)
    local size = self:getSize()
    for i = 0, size - 1 do
        local item = self:getItem(i)
        if item:isUniqueItem() then
            return true
        elseif item:isContainer() then
            if item:getUniqueItems() then
                return true
            end
        end
    end
    return false
end

function Player.getUniqueItems(self)
    local unique = {}
    local backpack = self:getSlotItem(CONST_SLOT_BACKPACK)
    if backpack then
        unique = backpack:getUniqueItems()
    end     
    return unique
end

function Container.getContainers(self)
    local size = self:getSize()
    local novaTabela = {}
    for i = 0, size - 1 do
        local item = self:getItem(i)
        if item:isContainer() then
            table.insert(novaTabela, item.uid) 
            for i, container in pairs(item:getContainers()) do
                if container:isContainer() then 
                    table.insert(novaTabela, container.uid)
                end
            end
        end
    end
    return novaTabela
end

function Player.getContainers(self)
    local containers = {}

    local backpack = self:getSlotItem(CONST_SLOT_BACKPACK)
    if backpack then
        containers = backpack:getContainers()
    end 
    
    return containers
end

function Container.getPokeballs(self)
    local size = self:getSize()
    local novaTabela = {}
    for i = 0, size - 1 do
        local item = self:getItem(i)
        if item:isPokeball() then
            if item:getPokeName() then 
                local number = item:getBallUniqueId()
                novaTabela[number] = item
            end
        elseif item:isContainer() then
            for i, ball in pairs(item:getPokeballs()) do
                if ball:getPokeName() then 
                    local number = ball:getBallUniqueId()
                    novaTabela[number] = ball
                end
            end
        end
    end
    return novaTabela
end

function Player.getPokeballs(self)
    local pokeballs = {}

    local backpack = self:getSlotItem(CONST_SLOT_BACKPACK)
    if backpack then
        pokeballs = backpack:getPokeballs()
    end 
    
    return pokeballs
end

function Container.getBall(self, param)
    local ret = {}
    local size = self:getSize()
    for i = size - 1, 0, -1 do
        local item = self:getItem(i)
        if item:isPokeball() then
            table.insert(ret, item)
        elseif item:isContainer() then
            local itemsInside = item:getBall()
            for i=0, #itemsInside do
                table.insert(ret, itemsInside[i])
            end
        end
    end
    return ret
end

function Player.getBall(self)
    local pokeballs = {}

    local backpack = self:getSlotItem(CONST_SLOT_BACKPACK)
    if backpack then
        pokeballs = backpack:getBall()
    end 
    
    return pokeballs
end

function doCreatureAddHealth(cid, health, effect, color) 
    local c = Creature(cid) 
    if not c then return true end
    if effect then 
        if effect > 0 then
            effect = effect + 1 
        end
        c:getPosition():sendMagicEffect(effect) 
    end
    if color then 
        if health == -0 then 
            health = health * -1
        end
        doSendAnimatedText(c:getPosition(), math.floor(health), color) 
    end
    return c and c:addHealth(health) or false 
end

function Monster.getLevel(poke)
    local name = poke:getName()
    if monsterType then
        return pokes[name].level
    else
        print("Error: Monster.getLevel(poke) - poke not found: "..poke:getName())
        return 0
    end
end

function Player.inPlayerBagOrDepot(self, position, depot) 
    if position.x == CONTAINER_POSITION then
        local container = self:getContainerById(position.y - 64)
        if not container then return true end
        local playerBag = getPlayerSlotItem(self, 3).uid
        local containerBp = getContainerBackpack(playerBag)
        if depot and container:getName() == "depot chest" or depot and container:getName() == "locker" then
            return true
        end
        if playerBag == container.uid or containerBp and table.find(containerBp, container.uid) then
            return true
        end
    end
    return false
end

function canExecuteSpeeds(player)
	if player:getStorageValue(storageRide) == 1 then
		player:sendCancelMessage("Sorry, not possible while on ride.")
		return false
	end
	if player:getStorageValue(storageFly) == 1 then
		player:sendCancelMessage("Sorry, not possible while on fly.")
		return false
	end
	if player:getStorageValue(storageSurf) > 0 then
		player:sendCancelMessage("Sorry, not possible while on surf.")
		return false
	end
	if player:getStorageValue(storageDive) > 0 then
		player:sendCancelMessage("Sorry, not possible while on dive.")
		return false
	end
	if player:getStorageValue(storageEvent) > 0 then
		player:sendCancelMessage("Sorry, not possible while on event.")
		return false
	end
    return true
end

function isOnline(player)
    if isCreature(player) and Creature(player) then
        return true
    else
        return false
    end
end

function getOutfitOtclient(outfit)
	return {
		type    = tonumber(outfit.lookType)   or 0,
		feet    = tonumber(outfit.lookFeet)   or 0,
		addons  = tonumber(outfit.lookAddons) or 0,
		legs    = tonumber(outfit.lookLegs)   or 0,
		auxType = tonumber(outfit.lookTypeEx) or 0,
		head    = tonumber(outfit.lookHead)   or 0,
		body    = tonumber(outfit.lookBody)   or 0,
	}
end

function getPokemonLevel(cid, dex)
    if not isCreature(cid) then return 0 end 
    if not dex then                      --alterado v1.9
        if ehMonstro(cid) then 
            return pokes[getCreatureName(cid)].wildLvl             
        end
    end
    return pokes[getCreatureName(cid)].level
end
    
function getPokemonLevelByName(name)
    return pokes[name] and pokes[name].level or 0  --alterado v1.9
end
