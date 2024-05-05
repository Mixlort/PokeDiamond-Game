function onCastSpell(cid, var)

    ----Novo padrão by Mixlort---------------------------------------------------------------------

    if hasSummons(cid) then
        cid = cid:getSummon()
    end
    
    local baseSpell = mixlortBaseSpell(cid, var.string)
    if not baseSpell then
        print("Erro novo sistema de spells: "..var.string)
        -- return true
    end
    if baseSpell == "true" then
        return true
    elseif baseSpell == "false" then
        return false
    end

    local spell = var.string
    local min = baseSpell.min or 0
    local max = baseSpell.max or 0
    local target = baseSpell.target or cid
    local getDistDelay = baseSpell.getDistDelay or 0

     --Posições--
    posC = getThingPosWithDebug(cid) PosC = posC PosCid = posC posCid = posC
    posT = getThingPosWithDebug(target) PosT = posT PosTarget = posT posTarget = posT 
    posC1 = getThingPosWithDebug(cid) posC1.x = posC1.x+1 posC1.y = posC1.y+1 PosC1 = posC1 posCid1 = posC1 PosCid1 = posC1 
    posT1 = getThingPosWithDebug(target) posT1.x = posT1.x+1 posT1.y = posT1.y+1 PosT1 = posT1 posTarget1 = posT1 PosTarget1 = posT1

    ----Novo padrão by Mixlort---------------------------------------------------------------------

	local pos = getThingPosWithDebug(cid)
	local areas = {rock1, rock2, rock3, rock4, rock5}
	local ret = {}
	    ret.id = 0
	    ret.cd = 12
	    ret.eff = 0
	    ret.check = 0
	    ret.spell = spell	    
	    
	local function endMove(cid)
		if isCreature(cid) then
            if not isOnline(cid) then return true end
            if isNumber(cid) then cid = Creature(cid) end
		   doRemoveCondition(cid, CONDITION_OUTFIT)   
		end
	end

	doSetCreatureOutfit(cid, {lookType = 1449}, -1)
	stopNow(cid, 16*360)
	addEvent(endMove, 16*360, cid:getId())
	----
	for i = 0, 4 do
	    addEvent(doMoveInArea2, i*350, cid:getId(), 100, areas[i+1], GROUNDDAMAGE, min, max, spell, ret)
	    addEvent(doMoveInArea2, i*360, cid:getId(), 100, areas[i+1], GROUNDDAMAGE, 0, 0, spell, ret)
	end
	for i = 4, 8 do
	    local a = i-3
	    addEvent(doMoveInArea2, i*350, cid:getId(), 100, areas[a], GROUNDDAMAGE, min, max, spell, ret)
	    addEvent(doMoveInArea2, i*360, cid:getId(), 100, areas[a], GROUNDDAMAGE, 0, 0, spell, ret)
	end
	for i = 8, 12 do
	    local a = i-7
	    addEvent(doMoveInArea2, i*350, cid:getId(), 100, areas[a], GROUNDDAMAGE, min, max, spell, ret)
	    addEvent(doMoveInArea2, i*360, cid:getId(), 100, areas[a], GROUNDDAMAGE, 0, 0, spell, ret)
	end
	for i = 12, 16 do
	    local a = i-11
	    addEvent(doMoveInArea2, i*350, cid:getId(), 100, areas[a], GROUNDDAMAGE, min, max, spell, ret)
	    addEvent(doMoveInArea2, i*360, cid, 100, areas[a], GROUNDDAMAGE, 0, 0, spell, ret)
	end
	for i = 16, 20 do
	    local a = i-15
	    addEvent(doMoveInArea2, i*350, cid:getId(), 100, areas[a], GROUNDDAMAGE, min, max, spell, ret)
	    addEvent(doMoveInArea2, i*360, cid:getId(), 100, areas[a], GROUNDDAMAGE, 0, 0, spell, ret)
	end

return true
end