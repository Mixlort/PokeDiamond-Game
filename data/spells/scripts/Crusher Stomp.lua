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

	local pL = getThingPosWithDebug(cid)
	pL.x = pL.x+5
	pL.y = pL.y+1 
	-----------------
	local pO = getThingPosWithDebug(cid)
	pO.x = pO.x-3
	pO.y = pO.y+1 
	------------------
	local pN = getThingPosWithDebug(cid)
	pN.x = pN.x+1
	pN.y = pN.y+5 
	-----------------
	local pS = getThingPosWithDebug(cid)
	pS.x = pS.x+1
	pS.y = pS.y-3 

	local po = {pL, pO, pN, pS}
	local po2 = {
		{x = pL.x, y = pL.y-1, z = pL.z},
		{x = pO.x, y = pO.y-1, z = pO.z},
		{x = pN.x-1, y = pN.y, z = pN.z},
		{x = pS.x-1, y = pS.y, z = pS.z},
	}

	local ret = {}
	ret.id = 0
	ret.cd = 9
	ret.check = 0
	ret.eff = 34
	ret.spell = spell

	for i = 1, 4 do
	    doSendMagicEffect(po[i], 127)
	    doAreaCombatHealth(cid, GROUNDDAMAGE, po2[i], crusher, -min, -max, 255)
	end
	doMoveInArea2(cid, 118, stomp, GROUNDDAMAGE, min, max, spell, ret)  

return true
end