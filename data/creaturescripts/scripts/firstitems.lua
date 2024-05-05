local firstItems = {2550, 1987, 2547, 2120, 2382, 2580}

function onLogin(player)
	if not player:getSlotItem(CONST_SLOT_BACKPACK) then
		for i = 1, #firstItems do
			player:addItem(firstItems[i], 1)
		end
		player:addSlotItems()
	end
	return true
end
