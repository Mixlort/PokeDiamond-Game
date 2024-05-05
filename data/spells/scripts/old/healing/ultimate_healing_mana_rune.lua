local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_MANADRAIN)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

function onGetFormulaValues(player, level, magicLevel)
	local min = (level / 25) + (magicLevel * 15) + 300 -- 42
	local max = (level / 25) + (magicLevel * 30) + 600 -- 90
	-- local min = (level / 25) + (magicLevel * 7.3) + 42
	-- local max = (level / 25) + (magicLevel * 12.4) + 90
	player:say(max, TALKTYPE_MONSTER_SAY)
	return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant, isHotkey)
	return combat:execute(creature, variant)
end
