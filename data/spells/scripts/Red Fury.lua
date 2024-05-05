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

   	local effectpos = getThingPosWithDebug(cid)
   	local effect = 255
   	local a = getCreatureLookDirection(cid)

	if a == 0 then
	    if getSubName(cid, target) == "Scizor" then  --alterado v1.6.1
	       effect = 236
	    else
		   effect = 128
	    end
		effectpos.x = effectpos.x + 1
		effectpos.y = effectpos.y - 1
	elseif a == 1 then
		effectpos.x = effectpos.x + 2
		effectpos.y = effectpos.y + 1
		if getSubName(cid, target) == "Scizor" then   --alterado v1.6.1
	       effect = 232
	    else
		   effect = 129
	    end
	elseif a == 2 then
		effectpos.x = effectpos.x + 1
		effectpos.y = effectpos.y + 2
		if getSubName(cid, target) == "Scizor" then   --alterado v1.6.1
	       effect = 233
	    else
		   effect = 131
	    end
	elseif a == 3 then
		effectpos.x = effectpos.x - 1
		effectpos.y = effectpos.y + 1
		if getSubName(cid, target) == "Scizor" then   --alterado v1.6.1
	       effect = 224
	    else
		   effect = 130
	    end
	end
    local function doFury(cid, effect)
	    if not isCreature(cid)  then return true end
        if not isOnline(cid) then return true end
        if isNumber(cid) then cid = Creature(cid) end
	    if isWithFear(cid) and getPlayerStorageValue(cid, 3644587) >= 1 then return true end
	    if isSleeping(cid) and getPlayerStorageValue(cid, 3644587) >= 1 then return true end
		doSendMagicEffect(effectpos, effect)
		doMoveInArea2(cid, 2, wingatk, BUGDAMAGE, min, max, spell)
    end                               
    
    addEvent(doFury, 0, cid:getId(), effect)
    addEvent(doFury, 350, cid:getId(), effect)

return true
end