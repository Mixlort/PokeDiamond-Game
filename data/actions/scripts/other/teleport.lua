local upFloorIds = {1386, 3678, 5543, 384}
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId() == 1001 then
        player:teleportTo(Position(1652, 2435, 9))
        return true
    elseif item:getUniqueId() == 1002 then
        player:teleportTo(Position(1857, 2390, 6))
        return true
    end

	if table.contains(upFloorIds, item.itemid) then
		fromPosition:moveUpstairs()
	else
		fromPosition.z = fromPosition.z + 1
	end

	if player:isPzLocked() and Tile(fromPosition):hasFlag(TILESTATE_PROTECTIONZONE) then
		player:sendCancelMessage(RETURNVALUE_PLAYERISPZLOCKED)
		return true
	end

	player:teleportTo(fromPosition, false)
	return true
end
