-- local config = {
-- 	[ITEM_DOLLAR_NOTE] = {changeTo = ITEM_HUNDRED_DOLLAR_NOTE},
-- 	[ITEM_HUNDRED_DOLLAR_NOTE] = {changeBack = ITEM_DOLLAR_NOTE, changeTo = ITEM_TEN_THOUSAND_DOLLAR_NOTE},
-- 	[ITEM_TEN_THOUSAND_DOLLAR_NOTE] = {changeBack = ITEM_HUNDRED_DOLLAR_NOTE}
-- }

-- local goldConverter = Action()

-- function goldConverter.onUse(player, item, fromPosition, target, toPosition, isHotkey)
-- 	local coin = config[target.itemid]

-- 	if not coin then
-- 		return false
-- 	end

-- 	local charges = item:getCharges()
-- 	if coin.changeTo and target.type == 100 then
-- 		target:remove()
-- 		player:addItem(coin.changeTo, 1)
-- 		item:transform(item:getId(), charges -1)
-- 	elseif coin.changeBack then
-- 		target:transform(target.itemid, target.type - 1)
-- 		player:addItem(coin.changeBack, 100)
-- 		item:transform(item:getId(), charges -1)
-- 	else
-- 		return false
-- 	end

-- 	if charges == 0 then
-- 		item:remove()
-- 	end
-- 	return true
-- end

-- goldConverter:id(26378)
-- goldConverter:register()
