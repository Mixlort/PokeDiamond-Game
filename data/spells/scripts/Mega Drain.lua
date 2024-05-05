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

    local uid = checkAreaUid(getThingPos(cid), check, 1, 1)
    for _,pid in pairs(uid) do
        if isCreature(cid) and isCreature(pid) and pid ~= cid then
           if isPlayer(pid) and #getCreatureSummons(pid) >= 1 then return false end
         
           local life = getCreatureHealth(pid)
 
           doAreaCombatHealth(cid, GRASSDAMAGE, getThingPos(pid), 0, -min, -max, 14)
 
           local newlife = life - getCreatureHealth(pid)
 
           doSendMagicEffect(getThingPos(cid), 14)
           if newlife >= 1 then
              doCreatureAddHealth(cid, newlife)
              doSendAnimatedText(getThingPos(cid), "+"..newlife.."", 32)
           end  
        end
    end
   
return true
end