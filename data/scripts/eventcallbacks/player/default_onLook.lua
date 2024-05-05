local ec = EventCallback

ec.onLook = function(self, thing, position, distance, description)
    local description = "You see " .. thing:getDescription(distance)
    if thing:isItem() and thing:isPokeball() then
        local pokeName = thing:getPokeName()
        local pokeBoost = thing:getPokeBoost() or 0
        local pokeLove = thing:getSpecialAttribute("pokeLove") or 0
        local ownerName = thing:getSpecialAttribute("owner")
        local pokeHealth = thing:getPokeHealth() or 0
        local healthStr = ""
        if ownerName then
            healthStr = "\nIt belongs to " .. ownerName .. "."
        end
        if pokeHealth <= 0 then
            healthStr = "\nIt is fainted."
        end
        if pokeName ~= nil and healthStr ~= nil then           
            -- description = string.format("You see a %s. \nBoost: +%s. %s", pokeName, pokeBoost, healthStr)
            description = string.format("%s\nYou see a %s. \nBoost: +%s. %s", description, pokeName, pokeBoost, healthStr)
            description = string.format("%s\nUniqueId: %s", description, thing:getBallUniqueId())
        end
    end
    if self:getGroup():getAccess() then  -- MIXLORT
        if thing:isItem() then
            description = string.format("%s\nItem ID: %d", description, thing:getId())
            description = string.format("%s\nClient ID: %d", description, ItemType(thing:getId()):getClientId())

            local actionId = thing:getActionId()
            if actionId ~= 0 then
                description = string.format("%s, Action ID: %d", description, actionId)
            end

            local uniqueId = thing:getAttribute(ITEM_ATTRIBUTE_UNIQUEID)
            if uniqueId > 0 and uniqueId < 65536 then
                description = string.format("%s, Unique ID: %d", description, uniqueId)
            end

            local itemType = thing:getType()

            local transformEquipId = itemType:getTransformEquipId()
            local transformDeEquipId = itemType:getTransformDeEquipId()
            if transformEquipId ~= 0 then
                description = string.format("%s\nTransforms to: %d (onEquip)", description, transformEquipId)
            elseif transformDeEquipId ~= 0 then
                description = string.format("%s\nTransforms to: %d (onDeEquip)", description, transformDeEquipId)
            end

            local decayId = itemType:getDecayId()
            if decayId ~= -1 then
                description = string.format("%s\nDecays to: %d", description, decayId)
            end
        elseif thing:isCreature() then
            local str = "%s\nHealth: %d / %d"
            if thing:isPlayer() and thing:getMaxMana() > 0 then
                str = string.format("%s, Mana: %d / %d", str, thing:getMana(), thing:getMaxMana())
            end
            description = string.format(str, description, thing:getHealth(), thing:getMaxHealth()) .. "."
            -- description = string.format("%s\nOffense: %s", description, getOffense(thing.uid))
            -- description = string.format("%s\nDefense: %s", description, getDefense(thing.uid))
            -- description = string.format("%s\ngetSpecialDefense: %s", description, getSpecialDefense(thing.uid))
            -- description = string.format("%s\ngetVitality: %s", description, getVitality(thing.uid))
            -- description = string.format("%s\ngetSpecialAttack: %s", description, getSpecialAttack(thing.uid))
        end

        local position = thing:getPosition()
        description = string.format(
            "%s\nPosition: %d, %d, %d",
            description, position.x, position.y, position.z
        )

        if thing:isCreature() then
            if thing:isPlayer() then
                description = string.format("%s\nIP: %s.", description, Game.convertIpToString(thing:getIp()))
            end
        end
    end
    return description
end

ec:register()
