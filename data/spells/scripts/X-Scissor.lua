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

	local a = getThingPosWithDebug(cid)
    local mydir = getCreatureLookDir(cid)
	 
	local X = {
		{{x = a.x+1, y = a.y, z = a.z}, 16}, --norte
		{{x = a.x+2, y = a.y+1, z = a.z}, 221}, --leste
		{{x = a.x+1, y = a.y+2, z = a.z}, 223}, --sul
		{{x = a.x, y = a.y+1, z = a.z}, 243}, --oeste
	}

	local pos = X[mydir+1]

	for b = 1, 3 do
	    addEvent(doSendMagicEffect, b * 70, pos[1], pos[2])
	end
		
	doMoveInArea2(cid, 2, xScissor, BUGDAMAGE, min, max, spell)

return true
end