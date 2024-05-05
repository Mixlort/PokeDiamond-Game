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

	eff = 14 --or 13

	doAreaCombatHealth(cid, GRASSDAMAGE, getThingPosWithDebug(cid), bombWee3, 0, 0, eff)
	if isSummon(cid) then 
        if not getCreatureMaster(cid):getUsingBall() then return true end
	   doCureBallStatus(getCreatureMaster(cid):getUsingBall().uid, "all")
	end
	doCureStatus(cid, "all") 

	local uid = checkAreaUid(getThingPosWithDebug(cid), confusion, 1, 1)
	for _,pid in pairs(uid) do
	    if isCreature(pid) then
	       if ehMonstro(cid) and ehMonstro(pid) and pid ~= cid then
	          doCureStatus(pid, "all")
	       elseif isSummon(cid) and ((isSummon(pid) and canAttackOther(cid, pid) == "Cant") or (isPlayer(pid) and canAttackOther(cid, pid) == "Cant")) and pid ~= cid then
	          if isSummon(pid) then 
                if not getCreatureMaster(pid):getUsingBall() then return true end
	             doCureBallStatus(getCreatureMaster(pid):getUsingBall().uid, "all")
	          end
	          doCureStatus(pid, "all")
	       end
	    end
	end

return true
end