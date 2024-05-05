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

--[outfit] = outfit chutando,
local hitmonlees = {
["Hitmonlee"] =  652,      --hitmonlee
["Shiny Hitmonlee"] = 878,  --shiny hitmonlee
}
   
   local nome = getCreatureName(cid)  
                                                --alterado v1.6                                        --alterado v1.7
if (not hitmonlees[nome] and isCreature(target)) or (isCreature(target) and math.random(1, 100) <= passivesChances["Demon Kicker"][nome]) then
                                                         
      if getDistanceBetween(getThingPos(cid), getThingPos(target)) > 1 then
      return true
      end
      if getPlayerStorageValue(cid, 32623) == 1 then  --proteçao pra n usar a passiva 2x seguidas...
      return true
      end
      
      if not isSummon(cid) then       --alterado v1.7
         doCreatureSay(cid, string.upper(spell).."!", TALKTYPE_MONSTER)
      end
      
      local function doChangeHitmon(cid)
      if not isCreature(cid) then return true end
      if not isOnline(cid) then return true end
      if isNumber(cid) then cid = Creature(cid) end
         setPlayerStorageValue(cid, 32623, 0)         --proteçao
         local monsterType = MonsterType(getCreatureName(cid))
         if isSleeping(cid) and monsterType:getOutfit() ~= 0 then
            doSetCreatureOutfit(cid, {lookType = 0, lookTypeEx = monsterType:getOutfit()}, -1)
         else
            doRemoveCondition(cid, CONDITION_OUTFIT)
         end
      end            
       
         setPlayerStorageValue(cid, 32623, 1)       --proteçao
         setPlayerStorageValue(cid, 98654, 1)
         
         local look = hitmonlees[nome] or getPlayerStorageValue(cid, 21104)  --alterado v1.6
   
         doCreatureSetLookDir(cid, getCreatureDirectionToTarget(cid, target))
         doSetCreatureOutfit(cid, {lookType = look}, -1)   --alterado v1.6
         doTargetCombatHealth(cid, target, FIGHTINGDAMAGE, -min, -max, 255)
         
         addEvent(doChangeHitmon, 700, cid:getId())          
end

return true
end