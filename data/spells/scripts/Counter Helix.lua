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

   local OutFit = {
["Scyther"] = {out = 496, cima = 128, direita = 129, esquerda = 130, baixo = 131},  --scyther
["Scizor"] = {out = 918, cima = 236, direita = 232, esquerda = 224, baixo = 233},  --Scizor
["Shiny Scyther"] = {out = 849, cima = 128, direita = 129, esquerda = 130, baixo = 131}, --Shiny Scyther
["Hitmontop"] = {out = 1193, cima = 251, direita = 253, esquerda = 254, baixo = 252}, --Hitmontop
["Shiny Hitmontop"] = {out = 1451, cima = 251, direita = 253, esquerda = 254, baixo = 252}, --Shiny Hitmontop    
["Pineco"] = {out = 1194, cima = 251, direita = 253, esquerda = 254, baixo = 252}, --pineco
["Forretress"] = {out = 1192, cima = 251, direita = 253, esquerda = 254, baixo = 252}, --Forretress
}
      
      if getPlayerStorageValue(cid, 32623) == 1 then  --prote�ao pra n usar a passiva 2x seguidas...
      return true
      end
      
      local nome1 = getSubName(cid, target)   --alterado v1.6.1
      local outfitt = OutFit[nome1]   --alterado v1.6.1        

      local function damage(cid, min, max)
      if isCreature(cid) then
        if not isOnline(cid) then return true end
        if isNumber(cid) then cid = Creature(cid) end
         if isInArray({"Scyther", "Shiny Scyther", "Pineco"}, nome1) then   --alterado v1.6
            damage = BUGDAMAGE
         elseif isInArray({"Hitmontop", "Shiny Hitmontop"}, nome1) then               
            damage = FIGHTINGDAMAGE                --alterado v1.6.1
         else                                  
            damage = STEELDAMAGE
         end
         doAreaCombatHealth(cid, damage, getThingPosWithDebug(cid), scyther5, -min, -max, CONST_ME_NONE) --alterado v1.6.1
         ---
         doAreaCombatHealth(cid, null, getThingPos(cid), scythe1, 0, 0, outfitt.cima) --cima
         doAreaCombatHealth(cid, null, getThingPos(cid), scythe2, 0, 0, outfitt.baixo) --baixo
         doAreaCombatHealth(cid, null, getThingPos(cid), scythe3, 0, 0, outfitt.direita) --direita
         doAreaCombatHealth(cid, null, getThingPos(cid), scythe4, 0, 0, outfitt.esquerda)  --esquerda
      end
      end
      
      local function sendEff(cid)
      if isCreature(cid) then
        if not isOnline(cid) then return true end
        if isNumber(cid) then cid = Creature(cid) end
         doAreaCombatHealth(cid, null, getThingPos(cid), scythe1, 0, 0, outfitt.cima) --cima
         doAreaCombatHealth(cid, null, getThingPos(cid), scythe2, 0, 0, outfitt.baixo) --baixo
         doAreaCombatHealth(cid, null, getThingPos(cid), scythe3, 0, 0, outfitt.direita) --direita       --alterado v1.6
         doAreaCombatHealth(cid, null, getThingPos(cid), scythe4, 0, 0, outfitt.esquerda)  --esquerda
      end
      end   

      local function doChangeO(cid)
	  if not isCreature(cid) then return true end
      if not isOnline(cid) then return true end
      if isNumber(cid) then cid = Creature(cid) end
         setPlayerStorageValue(cid, 32623, 0)
         local outfit = MonsterType(getCreatureName(cid)):getOutfit() 
         if isSleeping(cid) and outfit ~= 0 then
            doSetCreatureOutfit(cid, {lookType = 0, lookTypeEx = outfit}, -1)
         else
             doRemoveCondition(cid, CONDITION_OUTFIT)
         end
      end
      
      local delay = 200 -- n�o mexe
      local master = isSummon(cid) and getCreatureMaster(cid) or cid                    --alterado v1.6
      local summons = getCreatureSummons(master)                                          
      
      if (isPlayer(master) and #summons >= 2) or (ehMonstro(master) and #summons >= 1) then
         for j = 1, #summons do
             setPlayerStorageValue(summons[j], 32623, 1)      
	         doSetCreatureOutfit(summons[j], {lookType = outfitt.out}, -1)

             for i = 1, 2 do                                                                     --alterado v1.6
                 addEvent(sendEff, delay*i, summons[j]:getId())
             end
             addEvent(doChangeO, 2 * 300 + 10, summons[j]:getId())
         end
         for i = 1, 2 do
             addEvent(damage, delay*i, (isPlayer(master:getId()) and summons[1]:getId() or master:getId()), min, max)
         end
      else
         setPlayerStorageValue(cid, 32623, 1)      
         doSetCreatureOutfit(cid, {lookType = outfitt.out}, -1)
   
         for i = 1, 2 do                                                                 --alterado v1.6
             addEvent(damage, delay*i, cid:getId(), min, max)
         end
         addEvent(doChangeO, 2 * 300 + 10, cid:getId()) 
      end

return true
end