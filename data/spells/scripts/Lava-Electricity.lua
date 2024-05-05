function onCastSpell(cid, var)

    ----Novo padr√£o by Mixlort---------------------------------------------------------------------

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

     --Posi√ß√µes--
    posC = getThingPosWithDebug(cid) PosC = posC PosCid = posC posCid = posC
    posT = getThingPosWithDebug(target) PosT = posT PosTarget = posT posTarget = posT 
    posC1 = getThingPosWithDebug(cid) posC1.x = posC1.x+1 posC1.y = posC1.y+1 PosC1 = posC1 posCid1 = posC1 PosCid1 = posC1 
    posT1 = getThingPosWithDebug(target) posT1.x = posT1.x+1 posT1.y = posT1.y+1 PosT1 = posT1 posTarget1 = posT1 PosTarget1 = posT1

    ----Novo padr√£o by Mixlort---------------------------------------------------------------------

    local eff = {
    ["Magmar"] = {5, FIREDAMAGE, 1461},
    ["Magby"] = {5, FIREDAMAGE},                                    --alterado v1.5
    ["Electabuzz"] =  {207, ELECTRICDAMAGE, 1462},
    ["Shiny Electabuzz"] =  {207, ELECTRICDAMAGE, 1460},
    ["Elekid"] =  {207, ELECTRICDAMAGE},
    }
   
      if getPlayerStorageValue(cid, 32623) == 1 then  --proteÁao pra n usar a passiva 2x seguidas...
      return true
      end
	  
	  local tabela = eff[getSubName(cid, target)]   --alterado v1.6.1
      
      local canDoStun = false
      if math.random(1, 100) <= 30 then   --alterado v1.6
         canDoStun = true
      end
      
      local function sendFireEff(cid, dir, eff, damage)
            if not isCreature(cid) then return true end
            if not isOnline(cid) then return true end
            if isNumber(cid) then cid = Creature(cid) end
            doAreaCombatHealth(cid, damage, getPositionByDirection(getThingPos(cid), dir), 0, -min, -max, eff)
            
            local pid = getThingFromPosWithProtect(getPositionByDirection(getThingPos(cid), dir))  --alterado v1.6
            
            if isCreature(pid) and not isNpc(pid) and tabela[2] == ELECTRICDAMAGE and canDoStun then
               local ret = {}
               ret.id = pid
               ret.cd = 9
               ret.eff = 48
               ret.check = getPlayerStorageValue(pid, conds["Stun"])
               ret.spell = "Electricity"          --alterado v1.6
               
      
               doMoveDano2(cid, pid, ELECTRICDAMAGE, 0, 0, ret, "Electricity")
            end     
      end

	  local function doSpinFire(cid)
	  if not isCreature(cid) then return true end
      if not isOnline(cid) then return true end
      if isNumber(cid) then cid = Creature(cid) end
	  local t = {
	      [1] = SOUTH,
	      [2] = SOUTHEAST,
	      [3] = EAST,
	      [4] = NORTHEAST,
	      [5] = NORTH,
	      [6] = NORTHWEST,
	      [7] = WEST,
	      [8] = SOUTHWEST,
		}
		for a = 1, 8 do
            addEvent(sendFireEff, a * 140, cid:getId(), t[a], tabela[1], tabela[2])
		end
		addEvent(setPlayerStorageValue, 8*140, cid:getId(), 32623, 0)        --proteÁao
	   end

    local out = tabela[3]
    if out then
       doSetCreatureOutfit(cid, {lookType = out}, 8*140)
    end
    setPlayerStorageValue(cid, 32623, 1)        --proteÁao
	doSpinFire(cid)

return true
end