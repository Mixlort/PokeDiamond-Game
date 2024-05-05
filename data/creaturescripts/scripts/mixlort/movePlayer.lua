function onMove(creature, toPosition, fromPosition)
    local player = Creature(creature:getId())
    if player then
        if player:isOnFly() then -- Fly
            toPosition:createFlyFloor()
        end -- Fly        
    end
    return true
end
