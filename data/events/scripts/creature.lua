function Creature:onChangeOutfit(outfit)
    if self:isPlayer() then
        if self:isOnEvent() then
            return false
        end
    end
	if hasEventCallback(EVENT_CALLBACK_ONCHANGEMOUNT) then
		if not EventCallback(EVENT_CALLBACK_ONCHANGEMOUNT, self, outfit.lookMount) then
			return false
		end
	end
	if hasEventCallback(EVENT_CALLBACK_ONCHANGEOUTFIT) then
		return EventCallback(EVENT_CALLBACK_ONCHANGEOUTFIT, self, outfit)
	else
		return true
	end
end

function Creature:onAreaCombat(tile, isAggressive)
	if hasEventCallback(EVENT_CALLBACK_ONAREACOMBAT) then
		return EventCallback(EVENT_CALLBACK_ONAREACOMBAT, self, tile, isAggressive)
	else
		return RETURNVALUE_NOERROR
	end
end

function Creature:onTargetCombat(target)
    -- if self:isPlayer() and target:isMonster() then
    --     if isSummon(target) and target:getMaster():isNpc() and not self:isDuelingWithNpc() then
    --         return RETURNVALUE_YOUMAYNOTATTACKTHISCREATURE
    --     end
    --     if isSummon(target) and target:getMaster() == self then
    --         return RETURNVALUE_YOUMAYNOTATTACKTHISCREATURE
    --     end
    -- elseif self:isPlayer() and target:isPlayer() then
    --     if hasSummons(target) then
    --         return RETURNVALUE_YOUMAYNOTATTACKTHISCREATURE
    --     end
    -- elseif self:isMonster() and target:isPlayer() then
    --     if isSummon(self) and self:getMaster():isNpc() then
    --         return RETURNVALUE_YOUMAYNOTATTACKTHISCREATURE
    --     end
    --     if hasSummons(target) then
    --         return RETURNVALUE_YOUMAYNOTATTACKTHISCREATURE
    --     end
    -- elseif self:isMonster() and target:isMonster() then
    --     if isSummon(self) and isSummon(target) and target:getMaster():isNpc() and self:getMaster():isPlayer() and not self:getMaster():isDuelingWithNpc() then
    --         return RETURNVALUE_YOUMAYNOTATTACKTHISCREATURE
    --     end
    --     if isSummon(self) and isSummon(target) and self:getMaster():isNpc() and target:getMaster():isPlayer() and not target:getMaster():isDuelingWithNpc() then
    --         return RETURNVALUE_YOUMAYNOTATTACKTHISCREATURE
    --     end
    -- end -- ativar??

    if not self or not target then
        return RETURNVALUE_YOUMAYNOTATTACKTHISCREATURE
    end
    
    if self:isPlayer() and target:isMonster() and not target:getMaster() then --mixlort sistema de agressivo por target
        if self:getSummon() then
            target:setTarget(self:getSummon())
            target:setFollowCreature(self:getSummon())
        else
            target:setTarget(self)
            target:setFollowCreature(self)
        end
    end

	if hasEventCallback(EVENT_CALLBACK_ONTARGETCOMBAT) then
		return EventCallback(EVENT_CALLBACK_ONTARGETCOMBAT, self, target)
	else
		return RETURNVALUE_NOERROR
	end
end

function Creature:onHear(speaker, words, type)
	if hasEventCallback(EVENT_CALLBACK_ONHEAR) then
		EventCallback(EVENT_CALLBACK_ONHEAR, self, speaker, words, type)
	end
end

function Creature:onUpdateStorage(key, value, oldValue, isSpawn)
    if hasEventCallback(EVENT_CALLBACK_ONUPDATESTORAGE) then
        EventCallback(EVENT_CALLBACK_ONUPDATESTORAGE, self, key, value, oldValue, isSpawn)
    end
end
