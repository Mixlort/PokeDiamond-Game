function onSay(player, words, param)

    -- local monsterType = MonsterType("Oddish")
    -- local monsterType2 = MonsterType("Charizard")

    -- doPlayerSendNotification(player, "Test!", {image = "/data/images/pictures/"..monsterType:getNumber()..""})
    -- doPlayerSendNotification(player, "Test!", {image = "/data/images/pictures/"..monsterType2:getNumber()..""})

    -- doPlayerSendNotification(player, "Test!", {lookType = monsterType:getOutfit().lookType})
    -- doPlayerSendNotification(player, "Test!", {lookType = monsterType2:getOutfit().lookType})
    
    -- doPlayerSendNotification(player, "Test!", {itemId = 2160})
    -- doPlayerSendNotification(player, "Test!", {itemId = 2708})

    -- player:sendExtendedOpcode(133, "fade")
    -- player:sendExtendedOpcode(166, "show")

    player:addMount(51)
    player:addWing(19)

    --test pokebar
    -- local ACTION_POKEBAR_ADD = 1
    -- local ACTION_POKEBAR_REMOVE = 2
    -- local ACTION_POKEBAR_UPDATE = 3
    -- local action = ACTION_POKEBAR_ADD

    -- local pokeballs = player:getPokeballs()
    -- for i, ball in ipairs(pokeballs) do
    --     local tipo = "" -- "USE" or "DEATH" (somente com ACTION_POKEBAR_UPDATE)
    --     local health = getHealthPercent(ball:getPokeHealth(), ball:getPokeMaxHealth())
    --     local name = ball:getPokeName()
    --     local outfit = getOutfitOtclient({ lookType = MonsterType(name):getOutfit().lookType })

    --     local data = {
    --         fastcallNumber = i,
    --         text = tipo,
    --         health = health,
    --         name = name,
    --         outfit = outfit
    --     }	
    --     player:sendExtendedOpcode(POKEBAR_OPCODE, json.encode({action = action, data = data}))
    -- end

    -- revivePokemonByName(player, "Abra")

    -- print("------------------")

    -- local item = player:getItemById(ITEM_BALL_USE, true)
    -- if item then
    --     local itemId = item:getId()
    --     player:setStorageValue(STORAGE_USING_POKE, itemId)
    -- end
    
    -- local itemId = player:getStorageValue(STORAGE_USING_POKE)
    -- if not itemId or itemId < 0 then return true end
    -- local item = player:getItemById(itemId, true)


    -- print(player:getPokeballs()[1])
    -- print(player:getPokeballs()[1]:getId())
    -- print(player:getItemById(player:getPokeballs()[1]:getId(), true))
    -- print("------------------")
    -- player:getPokeballs()

    -- local ball = player:getPokeballs()[1]

    -- local counter = player:getStorageValue("counter") or 0
    -- counter = counter + 1
    -- player:setStorageValue("counter", counter)
    -- local uniqueId = os.time() .. player:getGuid() .. counter
    -- ball:setSpecialAttribute("uniqueId", uniqueId)

    -- for i, ball in pairs(player:getPokeballs()) do
    --     if not ball:getBallUniqueId() then 
    --         ball:setBallUniqueId()
    --     else
    --         local name = ball:getPokeName()
    --         print(name..": "..ball:getBallUniqueId())
    --     end
    -- end
    
    -- local resultId = db.storeQuery("SELECT `value` FROM `pokeballs_uniqueid` WHERE `value`")
    -- if resultId ~= false then
    --     local accountId = result.getNumber(resultId, "value")
    --     result.free(resultId)
    -- end

    -- addPassStars(player, 1)

    -- print(getPokePrice("Rattata", 0)) -- 1
    -- print(getPokePrice(param, 0)) -- 21000
    -- player:addMoney(21000)



    -- item = Game.createItem(27644, 1)
    -- item:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, "(Item Unico)")
    -- player:addItemEx(item, true)

    -- item:getDescription():match("%(Item Unico%)")


    -- player:addUniqueItem(27644, 1)
    -- printTable(player:getUniqueItems())

    -- player:addItem("medicine", 10)
    
    
    -- player:addUniqueItem("empty pokeball", 20)
    -- player:addUniqueItem("empty greatball", 15)
    -- player:addUniqueItem("Great Potion", 25)
    -- player:addUniqueItem("revive", 20)
    
    print("TestCommit")

    doSendMagicEffect(player:getPosition(), CONST_ME_LOSEENERGY)

    return true
end