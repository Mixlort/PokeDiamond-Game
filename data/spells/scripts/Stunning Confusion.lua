function onCastSpell(cid, var)

    ----Novo padrÃ£o by Mixlort---------------------------------------------------------------------

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

     --PosiÃ§Ãµes--
    posC = getThingPosWithDebug(cid) PosC = posC PosCid = posC posCid = posC
    posT = getThingPosWithDebug(target) PosT = posT PosTarget = posT posTarget = posT 
    posC1 = getThingPosWithDebug(cid) posC1.x = posC1.x+1 posC1.y = posC1.y+1 PosC1 = posC1 posCid1 = posC1 PosCid1 = posC1 
    posT1 = getThingPosWithDebug(target) posT1.x = posT1.x+1 posT1.y = posT1.y+1 PosT1 = posT1 posTarget1 = posT1 PosTarget1 = posT1

    ----Novo padrÃ£o by Mixlort---------------------------------------------------------------------

      if getPlayerStorageValue(cid, 32623) == 1 then  --proteçao pra n usar a spell 2x seguidas...
      return true
      end
      
      local function damage(cid)
      if isCreature(cid) then
        if not isOnline(cid) then return true end
        if isNumber(cid) then cid = Creature(cid) end
         doAreaCombatHealth(cid, PSYCHICDAMAGE, getThingPosWithDebug(cid), bombWee3, -min, -max, 136)
      end
      end
          
      setPlayerStorageValue(cid, 32623, 1)        --proteçao
      for i = 1, 7 do
          addEvent(damage, i*500, cid:getId())
      end
      addEvent(setPlayerStorageValue, 3500, cid:getId(), 32623, 0)        --proteçao
      

return true
end