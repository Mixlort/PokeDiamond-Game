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

	local p = getThingPosWithDebug(cid)

	local t = {
	{251, {x = p.x+1, y = p.y-1, z = p.z}},
	{253, {x = p.x+2, y = p.y+1, z = p.z}},
	{252, {x = p.x+1, y = p.y+2, z = p.z}},
	{254, {x = p.x-1, y = p.y+1, z = p.z}},
	}

	doAreaCombatHealth(cid, DARKDAMAGE, p, scyther5, -min, -max, 165)
	for a = 0, 1 do
	    for i = 1, 4 do
	        addEvent(doSendMagicEffect, a*400, t[i][2], t[i][1])          --alterado v1.8
	    end
	end
	addEvent(doAreaCombatHealth, 400, cid:getId(), DARKDAMAGE, p, scyther5, -min, -max, 165)

return true
end