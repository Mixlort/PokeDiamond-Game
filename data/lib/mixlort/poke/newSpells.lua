const_distance_delay = 56 -- 70

function mixlortBaseSpell(cid, var, mina, maxa)    
    local spell = var
    local target = cid
    local getDistDelay = 0
    if not isCreature(cid) or getCreatureHealth(cid) <= 0 then return "false" end  --alterado v1.6
    if isSleeping(cid) and getPlayerStorageValue(cid, 21100) <= -1 then return "true" end  --alterado v1.6

    if isCreature(getMasterTarget(cid)) then
        target = getMasterTarget(cid)
        getDistDelay = getDistanceBetween(getCreaturePosition(cid), getCreaturePosition(target)) * const_distance_delay
    end

    if isMonster(cid) and not isSummon(cid) then
        if getCreatureCondition(cid, CONDITION_EXHAUST) then
            return "true"
        end
        doCreatureAddCondition(cid, wildexhaust)

        if cid:getTarget() and isPlayer(cid:getTarget()) and cid:getTarget():getSummon() then
            local summonP = cid:getTarget():getSummon()
            cid:setTarget(summonP)
            cid:setFollowCreature(summonP)
        end 
    end

    local mydir = isCreature(target) and getCreatureDirectionToTarget(cid, target) or getCreatureLookDirection(cid)
    local name = getCreatureName(cid)
         
    if reflectName and reflectName ~= "" then
        name = reflectName
    end
      
    name = doCorrectString((name))

    local table = math.random(1,35)
    if not cid then return true end
    if not spell then return true end
    table = getTableMove(cid, spell) or nil
    if table and table ~= "" and table ~= nil and table.f then
        table = getTableMove(cid, spell)
    else
        table = {f = 10, t = ""}
        print("Magia: " .. spell .. " erro: " .. cid:getName() .. "")
    end

    local min = 0
    local max = 0

    if ehMonstro(cid) and isCreature(getMasterTarget(cid)) and isInArray(specialabilities["evasion"], getCreatureName(getMasterTarget(cid))) then 
    local target = getMasterTarget(cid)
    if math.random(1, 100) <= passivesChances["Evasion"][getCreatureName(target)] then                                                                                      
        if isCreature(getMasterTarget(target)) then  --alterado v1.6 
            doSendMagicEffect(getThingPosWithDebug(target), 211)
            doSendAnimatedText(getThingPosWithDebug(target), "TOO BAD", 215)                                 
            doTeleportThing(target, getClosestFreeTile(target, getThingPosWithDebug(cid)), false)
            doSendMagicEffect(getThingPosWithDebug(target), 211)
            doFaceCreature(target, getThingPosWithDebug(cid)) 
            return "false"    --alterado v1.8
        end
        end   		 
    end

    --- FEAR / ROAR / SILENCE ---
    if (isWithFear(cid) or isSilence(cid)) and getPlayerStorageValue(cid, 21100) <= -1 then
        return "true"
    end
    ----------------------------min= 1000 + 

    -- if table ~= "" and table ~= nil then   --alterado v1.6

    if mina and maxa then
        min = math.abs(mina)
        max = math.abs(maxa)
    elseif not isPlayer(cid) then
        if table ~= "" and table ~= nil and table.f then
            min = getSpecialAttack(cid)
            max = min + (isSummon(cid) and getMasterLevel(cid) or getMasterLevel(cid))
            if spell == "Selfdestruct" then
            min = getCreatureHealth(cid)
            max = getCreatureHealth(cid)
            end
            if not isSummon(cid) and not isInArray({"Demon Puncher", "Demon Kicker", "Mega Drain", "Stunning Confusion", "Counter Helix", "Lava-Electricity", "Groundshock", "Electric Charge", "Melody", "Dragon Fury", "Spores Reaction", "Amnesia", "Zen Mind", "Mirror Coat"}, spell) then --alterado v1.7
                doCreatureSay(cid, doCorrectString(spell).."!", TALKTYPE_ORANGE_1)
            end
            if isNpcSummon(cid) then
                local mnn = {" use ", " "}
                local use = mnn[math.random(#mnn)]
                doCreatureSay(getCreatureMaster(cid), getPlayerStorageValue(cid, 1007)..","..use..""..doCorrectString(spell).."!", 1)
            end
        else
            print("Error trying to use move "..spell..", move not specified in the pokemon table.")
        end	
    end            
        
    --- Shredder Team -------------------------------

    if getPlayerStorageValue(cid, 637501) >= 1 then
        if #getCreatureSummons(cid) == 1 then
            docastspell(getCreatureSummons(cid)[1], spell)
        elseif #getCreatureSummons(cid) == 2 then
            docastspell(getCreatureSummons(cid)[1], spell)
            docastspell(getCreatureSummons(cid)[2], spell)
        end    
    elseif getPlayerStorageValue(cid, 637500) >= 1 then
        min = 0
        max = 0                                     
    end
        
    ------------------Miss System--------------------------

    -- local cd = getPlayerStorageValue(cid, conds["Miss"])
    -- local cd2 = getPlayerStorageValue(cid, conds["Confusion"])      --alterado v1.5
    -- local cd3 = getPlayerStorageValue(cid, conds["Stun"]) 
    -- if cd >= 0 or cd2 >= 0 or cd3 >= 0 then                                                         --alterado v1.7
    -- end

    ---------------GHOST DAMAGE---------------------------
    ghostDmg = GHOSTDAMAGE
    psyDmg = PSYCHICDAMAGE

    if getPlayerStorageValue(cid, 999457) >= 1 and table ~= "" and table.f ~= 0 then    --alterado v1.6
        psyDmg = MIRACLEDAMAGE                                                              
        ghostDmg = DARK_EYEDAMAGE
        addEvent(setPlayerStorageValue, 50, cid:getId(), 999457, -1)
    end
    --------------------REFLECT---------------------------
    setPlayerStorageValue(cid, 21100, -1)                --alterado v1.6
    if not isInArray({"Psybeam", "Sand Attack", "Flamethrower"}, spell) then  --alterado v1.8
        setPlayerStorageValue(cid, 21101, -1)
    end
    setPlayerStorageValue(cid, 21102, spell)

    local spellAtr = {}
    spellAtr.min = min
    spellAtr.max = max
    spellAtr.target = target
    spellAtr.getDistDelay = getDistDelay
    return spellAtr
    -- else
    --     local namePoke = doCorrectString(getCreatureName(cid))
    --     -- local remover = removeSpellInXML(namePoke, spell)
    --     if remover then print("Magia: " .. spell .. " remover do XML: " .. namePoke .. ".xml") end
    -- end
end

function getTableMove(cid, move)               --alterado v1.6
    local backup = {f = 0, t = ""}
    if getThingName(cid) == "Ditto" and pokes[getPlayerStorageValue(cid, 1010)] and getPlayerStorageValue(cid, 1010) ~= "Ditto" then
       name = getPlayerStorageValue(cid, 1010)
    else
       name = getThingName(cid)
    end
    if not isCreature(cid) or name == "" or not move then return backup end
    local x = movestable[name]
    if not x then return backup end   
    local z = {x.move1, x.move2, x.move3, x.move4, x.move5, x.move6, x.move7, x.move8, x.move9, x.move10, x.move11, x.move12, x.passive1, x.passive2, x.passive3}
    if getPlayerStorageValue(cid, 21103) ~= -1 then
       local sto = getPlayerStorageValue(cid, 21103) 
       setPlayerStorageValue(cid, 21103, -1) 
       return {f = sto, t = ""} 
    end
    for j = 1, 15 do
      if z[j] and z[j].name == move then
         return z[j]
      end
    end
    return movesinfo[move]
end

function getMasterTarget(cid)
    if isCreature(cid) and getPlayerStorageValue(cid, 21101) ~= -1 then
       return getPlayerStorageValue(cid, 21101)     --alterado v1.6
    end
    if isSummon(cid) then
        return getCreatureTarget(getCreatureMaster(cid))
    else
        return getCreatureTarget(cid)
    end
end

function getThingName(cid)
    if not isCreature(cid) then return "" end   --alterado v1.6
    return getCreatureName(cid)
end

function getSubName(cid, target)
    if not isCreature(cid) then return "" end
    if getCreatureName(cid) == "Ditto" and getPlayerStorageValue(cid, 1010) ~= "Ditto" then
       return getPlayerStorageValue(cid, 1010)
    elseif pokeHaveReflect(cid) and isCreature(target) then
       return getCreatureName(target)
    else                                                                --alterado v1.6.1
       return getCreatureName(cid)
    end
end

function getClosestFreeTile(cid, position)
    for p = 1, 10 do
        local tilePos = {x = position.x + math.random(-1, 1), y = position.y + math.random(-1, 1), z = position.z}
        if isWalkableMix(tilePos) then
            return tilePos
        end
    end

    return nil
end

function isWalkableMix(position)
    local tile = Tile(position)

    if not tile or not tile:isWalkable() then
        return false
    end

    if tile:getTopCreature() then
        return false
    end

    if getTileInfo(position).protection then
        return false
    end

    return true
end

function pokeHaveReflect(cid)
    if not isCreature(cid) then return false end
    local table = getTableMove(cid, "Reflect")
    if table and table.name then     --alterado v1.6
        return true 
    end
    return false
end
