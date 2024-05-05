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

	local flamepos = getThingPosWithDebug(cid)
    local effect = 255
    local a = getCreatureLookDirection(cid)

    if a == 0 then
        flamepos.x = flamepos.x+1
        flamepos.y = flamepos.y-1
        effect = 106
    elseif a == 1 then
        flamepos.x = flamepos.x+5
        flamepos.y = flamepos.y+1
        effect = 109
    elseif a == 2 then
        flamepos.x = flamepos.x+1
        flamepos.y = flamepos.y+5
        effect = 107
    elseif a == 3 then
        flamepos.x = flamepos.x-1
        flamepos.y = flamepos.y+1
        effect = 108
    end

    doMoveInArea2(cid, 0, flamek, FIREDAMAGE, min, max, spell)
	doSendMagicEffect(flamepos, effect)  

return true
end