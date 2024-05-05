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
	local p = getThingPosWithDebug(target)
	local newPos = getClosestFreeTile(target, p)

	local eff = getSubName(cid, target) == "Shiny Arcanine" and 51 or 50 --alterado v1.6.1

	local damage = NORMALDAMAGE
	-----------
	doDisapear(cid)
	doChangeSpeed(cid, -getCreatureSpeed(cid))
	-----------
	addEvent(doSendMagicEffect, 300, pos, 211)
	addEvent(doSendDistanceShoot, 400, pos, p, eff)
	addEvent(doSendDistanceShoot, 400, newPos, p, eff)
	addEvent(doDanoInTarget, 400, cid:getId(), target:getId(), damage, -min, -max, 0) --alterado v1.7
	addEvent(doSendDistanceShoot, 800, p, pos, eff)
	addEvent(doSendMagicEffect, 850, pos, 211)
	addEvent(doRegainSpeed, 1000, cid:getId())
	addEvent(doAppear, 1000, cid:getId())

return true
end