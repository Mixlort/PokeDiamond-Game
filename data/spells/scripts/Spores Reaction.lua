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


    local random = math.random(1, 3)

    if random == 1 then
       local ret = {}
       ret.id = 0
       ret.cd = math.random(2, 3)
       ret.check = 0                   --alterado v1.6
       ret.first = true
       ret.cond = "Sleep"
     
       doMoveInArea2(cid, 27, selfArea1, NORMALDAMAGE, 0, 0, "Spores Reaction", ret)
    elseif random == 2 then 
       local ret = {}
       ret.id = 0
       ret.cd = 6
       ret.eff = 0
       ret.check = 0
       ret.spell = spell
       
     
       doMoveInArea2(cid, 85, confusion, NORMALDAMAGE, 0, 0, "Spores Reaction", ret)    
    else
       local ret = {}
       ret.id = 0
       ret.cd = math.random(6, 10)
       ret.check = 0
       local lvl = isSummon(cid) and getMasterLevel(cid) or getMasterLevel(cid)     --alterado v1.6
       ret.damage = math.floor((getMasterLevel(cid)+lvl)/2)
       ret.cond = "Poison"                              
 
       doMoveInArea2(cid, 84, confusion, NORMALDAMAGE, 0, 0, "Spores Reaction", ret) 
    end
   
return true
end