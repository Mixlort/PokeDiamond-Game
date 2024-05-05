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

   	local rounds = math.random(4, 7)
   	rounds = rounds + math.floor(getMasterLevel(cid) / 35)
   	local eff = {136, 133, 136, 133, 137}
   	local area = {psy1, psy2, psy3, psy4, psy5}

	local ret = {}
   	ret.id = 0
   	ret.check = 0
   	ret.cd = rounds
   
   	setPlayerStorageValue(cid, 3644587, 1)
   	addEvent(setPlayerStorageValue, 4*400, cid:getId(), 3644587, -1)
   	for i = 0, 4 do
       	addEvent(doMoveInArea2, i*400, cid:getId(), eff[i+1], area[i+1], psyDmg, min, max, spell, ret)
   	end

return true
end