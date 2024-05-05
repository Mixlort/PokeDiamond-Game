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

	local master = isSummon(cid) and getCreatureMaster(cid) or cid
	local ret = {}
		ret.id = 0
		ret.cd = 9
		ret.eff = 34
		ret.check = 0
		ret.spell = spell

	local function doFall(cid)
        if not isOnline(cid) then return true end
        if isNumber(cid) then cid = Creature(cid) end   
		for rocks = 1, 42 do
		    addEvent(fall, rocks*35, cid:getId(), master:getId(), POISONDAMAGE, 6, 116)
		end
	end

	for up = 1, 10 do
	    addEvent(upEffect, up*75, cid:getId(), 6)
	end         
	                               
	addEvent(doFall, 450, cid:getId())
	addEvent(doMoveInArea2, 1400, cid:getId(), 0, BigArea2, POISONDAMAGE, min, max, spell, ret)  

return true
end