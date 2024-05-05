function onSay(player, words, param)
	if (player:getName() == "Mixlort") or (player:getName() == "Quinn") then
		player:setGroup(Group(param))
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Group ".. param)
    else
        return true
	end
end
