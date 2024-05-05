function onStepIn(creature, item, position, fromPosition)
    if not creature:isPlayer() or creature:isInGhostMode() then
        return true
    end

    creature:sendExtendedOpcode(133, "map_snow")
    return true
end

function onStepOut(creature, item, position, fromPosition)
	if not creature:isPlayer() or creature:isInGhostMode() then
		return true
	end

	if item:getId() == 670 then
		item:transform(6594)
	elseif item:getId() == 6594 then
    else
		item:transform(item.itemid + 15)
	end

    creature:sendExtendedOpcode(133, "map_default")
	creature:addAchievementProgress("Snowbunny", 10000)
	item:decay()
	return true
end
