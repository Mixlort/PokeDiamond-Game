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

   local function RemoveTeam(cid)
   if isCreature(cid) then
    if not isOnline(cid) then return true end
    if isNumber(cid) then cid = Creature(cid) end
      local p = getThingPos(cid)
      doSendMagicEffect(p, 211)
      doRemoveCreature(cid)
   end
   end
   
   local function setGender(cid, gender)
         if not isCreature(cid) then return true end
         if not isOnline(cid) then return true end
         if isNumber(cid) then cid = Creature(cid) end
         doCreatureSetSkullType(cid, gender)
   end
         
   if getPlayerStorageValue(cid, 637500) >= 1 or getPlayerStorageValue(cid, 637501) >= 1 then
   return true
   end
   
   local s = {
   ["Xatu"] = "XatuTeam",
   ["Yanma"] = "YanmaTeam",
   }
   
    doCreatureSay(cid, "Double Team!", TALKTYPE_MONSTER)
    local master = cid
    local pos = getThingPos(cid)                  
    local time = 20
    local life = getCreatureHealth(cid)
    local maxLife = getCreatureMaxHealth(cid)
    local gender = getPokemonGender(cid)
    local random = math.random(5, 10)
    local dir = getCreatureLookDirection(cid)
    ---------
    doDisapear(cid)
    doTeleportThing(cid, {x=4, y=3, z=10}, false) 
    doAppear(cid)
    ---------
    doSummonMonster(master, s[getCreatureName(cid)])
    local pk = getCreatureSummons(master)[1]
    -- addEvent(setGender, 20, cid:getId(), gender)
    setCreatureMaxHealth(pk, maxLife)
    doCreatureAddHealth(pk, life-maxLife)
    ---------
    doTeleportThing(pk, doTeleportThing(pk, pos), false)
    doTeleportThing(cid, doTeleportThing(cid, pos), false)
    doCreatureSetLookDir(pk, dir)
    doCreatureSetLookDir(cid, dir)
    doSendMagicEffect(getThingPos(pk), 211)
    doSendMagicEffect(getThingPos(cid), 211)
    if getPlayerStorageValue(cid, 9658783) >= 1 then          --gambiarra
       doBuffSyst(pk, getPlayerStorageValue(cid, 36847), 0, false, "Future Sight", true)
    end
    --------
    setPlayerStorageValue(pk, 637500, 1)
    setPlayerStorageValue(master, 637501, 1)
    addEvent(RemoveTeam, time*1000, pk:getId())
    addEvent(setPlayerStorageValue, time*1000, master:getId(), 637501, -1)


return true
end