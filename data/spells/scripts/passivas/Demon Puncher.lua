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

   local name = getCreatureName(cid)
                                                                                                             --alterado v1.7
	if (not hitmonchans[name] and isCreature(target)) or (isCreature(target) and math.random(1, 100) <= passivesChances["Demon Puncher"][name]) then 
	                                                        
	   if getDistanceBetween(getThingPosWithDebug(cid), getThingPosWithDebug(target)) > 1 then
	   return true
	   end
	   
	   if not isSummon(cid) then       --alterado v1.7
	     doCreatureSay(cid, string.upper(spell).."!", TALKTYPE_MONSTER)
	   end                                 
	     
	     if ehMonstro(cid) or not hitmonchans[name] then
	        hands = 0
	     else
	     	if not getCreatureMaster(cid):getUsingBall() then return true end
	        hands = getItemAttribute(getCreatureMaster(cid):getUsingBall().uid, "hands")
	     end
	     
	     if not hitmonchans[name] then
	        tabela = hitmonchans[getCreatureName(target)][hands]
	     else
	        tabela = hitmonchans[name][hands]
	     end
	      
	     doSendDistanceShoot(getThingPosWithDebug(cid), getThingPosWithDebug(target), 39)
	     doTargetCombatHealth(cid, target, tabela.type, -min, -max, 255)
	     
	     local alvo = getThingPosWithDebug(target)
	     alvo.x = alvo.x + 1                           ---alterado v1.7
	     
	     if hands == 4 then
	        doSendMagicEffect(alvo, tabela.eff)
	     else
	        doSendMagicEffect(getThingPosWithDebug(target), tabela.eff)
	     end
	     
	     if hands == 3 then
	        local ret = {}
	        ret.id = target
	        ret.cd = 9                     --alterado v1.6
	        ret.eff = 43
	        ret.check = getPlayerStorageValue(target, conds["Slow"])
	        ret.first = true
	        ret.cond = "Slow"
	     
	        doMoveDano2(cid:getId(), target:getId(), FIGHTINGDAMAGE, 0, 0, ret, spell)
	        setPlayerStorageValue(cid, 98654, 1)
	     end  
	end

return true
end