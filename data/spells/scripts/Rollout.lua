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

    RollOuts = {
        ["Voltorb"] = {lookType = 638},
        ["Electrode"] = {lookType = 637},
        ["Sandshrew"] = {lookType = 635},
        ["Sandslash"] = {lookType = 636},
        ["Phanpy"] = {lookType = 1005},
        ["Donphan"] = {lookType = 1456},
        ["Miltank"] = {lookType = 1006},                
        ["Golem"] = {lookType = 639},
        ["Shiny Electrode"] = {lookType = 1387},
        ["Shiny Golem"] = {lookType = 1403},
        ["Shiny Voltorb"] = {lookType = 1388}
    }

    local function setOutfit(cid, outfit)
        if isCreature(cid) and getCreatureCondition(cid, CONDITION_OUTFIT) == true then
            if not isOnline(cid) then return true end
            if isNumber(cid) then cid = Creature(cid) end
            if getCreatureOutfit(cid).lookType == outfit then
                doRemoveCondition(cid, CONDITION_OUTFIT)
                if getCreatureName(cid) == "Ditto" and pokes[getPlayerStorageValue(cid, 1010)] and getPlayerStorageValue(cid, 1010) ~= "Ditto" then
                   	if isSummon(cid) then
                      	local item = getCreatureMaster(cid):getUsingBall()
                        if not item then return true end
                      	doSetCreatureOutfit(cid, {lookType = getItemAttribute(item.uid, "transOutfit")}, -1)   --alterado v1.8
                   	end
                end 
           	end
        end
    end
    
	if RollOuts[getSubName(cid, target)] then
		doSetCreatureOutfit(cid, RollOuts[getSubName(cid, target)], -1)   --alterado v1.6.1
    end 

	local outfit = getCreatureOutfit(cid).lookType

    local function roll(cid, outfit)
    if not isCreature(cid) then return true end
    if isSleeping(cid) then return true end
    if not isOnline(cid) then return true end
    if isNumber(cid) then cid = Creature(cid) end
       	if RollOuts[getSubName(cid, target)] then
          	doSetCreatureOutfit(cid, RollOuts[getSubName(cid, target)], -1)   --alterado v1.6.1
       	end
       doDanoWithProtect(cid, ROCKDAMAGE, getThingPosWithDebug(cid), splash, -min, -max, 0)
    end

    setPlayerStorageValue(cid, 3644587, 1)
    addEvent(setPlayerStorageValue, 9000, cid:getId(), 3644587, -1)
    for r = 1, 11 do  --8
        addEvent(roll, 750 * r, cid:getId(), outfit)
    end
    addEvent(setOutfit, 9050, cid:getId(), outfit)

return true
end