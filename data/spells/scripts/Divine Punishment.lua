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

	local roardirections = {            
		[NORTH] = {SOUTH},
		[SOUTH] = {NORTH},
		[WEST] = {EAST},
		[EAST] = {WEST}
	}

	local function divineBack(cid)
		if not isCreature(cid) then return true end
        if not isOnline(cid) then return true end
        if isNumber(cid) then cid = Creature(cid) end
		local uid = checkAreaUid(getCreaturePosition(cid), check, 1, 1)
		for _,pid in pairs(uid) do
		    dirrr = getCreatureDirectionToTarget(pid, cid)
		    delay = getNextStepDelay(pid, 0)
		    if isSummon(cid) and (isMonster(pid) or (isSummon(pid) and canAttackOther(cid, pid) == "Can") or (isPlayer(pid) and canAttackOther(cid, pid) == "Can")) and pid ~= cid then
		        setPlayerStorageValue(pid, 654878, 1)
		        doChangeSpeed(pid, -getCreatureSpeed(pid))
		        doChangeSpeed(pid, 100)
			    doPushCreature(pid, roardirections[dirrr][1], 1, 0)
		     	doChangeSpeed(pid, -getCreatureSpeed(pid))
		        addEvent(setPlayerStorageValue, 6450, pid:getId(), 654878, -1)
		        addEvent(doRegainSpeed, 6450, pid:getId())
		    elseif isMonster(cid) and (isSummon(pid) or (isPlayer(pid) and #getCreatureSummons(pid) <= 0)) and pid ~= cid then
		        setPlayerStorageValue(pid, 654878, 1)
		        doChangeSpeed(pid, -getCreatureSpeed(pid))
			    doChangeSpeed(pid, 100)
			    doPushCreature(pid, roardirections[dirrr][1], 1, 0)
			    doChangeSpeed(pid, -getCreatureSpeed(pid))
		        addEvent(doRegainSpeed, 6450, pid:getId())
		        addEvent(setPlayerStorageValue, 6450, pid:getId(), 654878, -1)
		    end
		end    
	end

	local function doDivine(cid, min, max, spell, rounds, area)
		if not isCreature(cid) then return true end
        if not isOnline(cid) then return true end
        if isNumber(cid) then cid = Creature(cid) end
		local ret = {}
		ret.id = 0
		ret.check = 0
		ret.cd = rounds
		for i = 1, 9 do
		    addEvent(doMoveInArea2, i*500, cid:getId(), 137, area[i], psyDmg, min, max, spell, ret)
		end
	end
       
   	local rounds = math.random(9, 12)
   	local area = {punish1, punish2, punish3, punish1, punish2, punish3, punish1, punish2, punish3}
   
   	local posi = getThingPosWithDebug(cid) 
   	posi.x = posi.x+1
   	posi.y = posi.y+1

   	setPlayerStorageValue(cid, 2365487, 1)
   	addEvent(setPlayerStorageValue, 6450, cid:getId(), 2365487, -1) --alterado v1.4
   	doDisapear(cid)
   	doChangeSpeed(cid, -getCreatureSpeed(cid))
   	doSendMagicEffect(posi, 247)   
   	addEvent(doAppear, 6450, cid:getId())
   	addEvent(doRegainSpeed, 6450, cid:getId())
   
   	local uid = checkAreaUid(getCreaturePosition(cid), check, 1, 1)
	for _,pid in pairs(uid) do
	    if isSummon(cid) and (isMonster(pid) or (isSummon(pid) and canAttackOther(cid, pid) == "Can") or (isPlayer(pid) and canAttackOther(cid, pid) == "Can")) and pid ~= cid then
		    doChangeSpeed(pid, -getCreatureSpeed(pid))
	    elseif isMonster(cid) and (isSummon(pid) or (isPlayer(pid) and #getCreatureSummons(pid) <= 0)) and pid ~= cid then
	        doChangeSpeed(pid, -getCreatureSpeed(pid))
	    end
	end
                    
   	addEvent(divineBack, 2100, cid:getId())
   	addEvent(doDivine, 2200, cid:getId(), min, max, spell, rounds, area)

return true
end