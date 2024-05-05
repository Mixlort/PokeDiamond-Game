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

	local ret = {}
		ret.id = 0
		ret.cd = 9
		ret.eff = 34
		ret.check = 0
		ret.spell = spell

	local function smoke(cid)
		if not isCreature(cid) then return true end
        if not isOnline(cid) then return true end
        if isNumber(cid) then cid = Creature(cid) end
		if isSleeping(cid) and getPlayerStorageValue(cid, 3644587) >= 1 then return false end
		if isWithFear(cid) and getPlayerStorageValue(cid, 3644587) >= 1 then return true end
	   	doMoveInArea2(cid, 34, confusion, NORMALDAMAGE, 0, 0, spell, ret)
	end

	setPlayerStorageValue(cid, 3644587, 1)
	addEvent(setPlayerStorageValue, 1000, cid:getId(), 3644587, -1) 
	for i = 0, 2 do
	    addEvent(smoke, i*500, cid:getId())                               
	end

return true
end