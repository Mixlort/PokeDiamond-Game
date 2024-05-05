function Monster:onDropLoot(corpse)
    if hasEventCallback(EVENT_CALLBACK_ONDROPLOOT) then
        EventCallback(EVENT_CALLBACK_ONDROPLOOT, self, corpse)
    end
end

function Monster:onSpawn(position, startup, artificial)

    if self:getId() and not artificial then
        -- local name = self:getName()
        -- local monsterType = MonsterType(name)
        -- if math.random(1, 1000) <= SHINY_CHANCE then
        --     if monsterType:hasShiny() > 0 then
        --         local shinyName = "Shiny " .. name
        --         local monsterShiny = Game.createMonster(shinyName, position)
        --         if monsterShiny then
        --             addEvent(adjustWildPoke, 5, monsterShiny:getId())
        --         else
        --             print("Error: Could not create shiny monster:".. shinyName)
        --         end
        --     end
        -- end

        local name = self:getName()
        if not pokes[name] then print("Erro: "..name) return false end
        addEvent(adjustWildPoke, 5, self:getId())

        -- addEvent(setHavePassive, 5, self:getId())
    end

    if hasEventCallback(EVENT_CALLBACK_ONSPAWN) then
        return EventCallback(EVENT_CALLBACK_ONSPAWN, self, position, startup, artificial)
    else
        return true
    end
end
