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

	local function useSolarBeam(cid)
		if not isCreature(cid) then
			return true
		end
        if not isOnline(cid) then return true end
        if isNumber(cid) then cid = Creature(cid) end
		if isSleeping(cid) and getPlayerStorageValue(cid, 3644587) >= 1 then
			return true
		end
		if isWithFear(cid) and getPlayerStorageValue(cid, 3644587) >= 1 then
			return true
		end
		local effect1 = 255
		local effect2 = 255
		local effect3 = 255
		local effect4 = 255
		local effect5 = 255
		local area = {}
		local pos1 = getThingPosWithDebug(cid)
		local pos2 = getThingPosWithDebug(cid)
		local pos3 = getThingPosWithDebug(cid)
		local pos4 = getThingPosWithDebug(cid)
		local pos5 = getThingPosWithDebug(cid)
		if getCreatureLookDirection(cid) == 1 then
			effect1 = 4
			effect2 = 89
			effect3 = 89
			effect4 = 89
			effect5 = 26
			pos1.x = pos1.x + 2
			pos1.y = pos1.y + 1
			pos2.x = pos2.x + 3
			pos2.y = pos2.y + 1
			pos3.x = pos3.x + 4
			pos3.y = pos3.y + 1
			pos4.x = pos4.x + 5
			pos4.y = pos4.y + 1
			pos5.x = pos5.x + 6
			pos5.y = pos5.y + 1
			area = solare
		elseif getCreatureLookDirection(cid) == 0 then
			effect1 = 36
			effect2 = 37
			effect3 = 37
			effect4 = 38
			pos1.x = pos1.x + 1
			pos1.y = pos1.y - 1
			pos2.x = pos2.x + 1
			pos2.y = pos2.y - 3
			pos3.x = pos3.x + 1
			pos3.y = pos3.y - 4
			pos4.x = pos4.x + 1
			pos4.y = pos4.y - 5
			area = solarn
		elseif getCreatureLookDirection(cid) == 2 then
			effect1 = 46
			effect2 = 50
			effect3 = 50
			effect4 = 59
			pos1.x = pos1.x + 1
			pos1.y = pos1.y + 2
			pos2.x = pos2.x + 1
			pos2.y = pos2.y + 3
			pos3.x = pos3.x + 1
			pos3.y = pos3.y + 4
			pos4.x = pos4.x + 1
			pos4.y = pos4.y + 5
			area = solars
		elseif getCreatureLookDirection(cid) == 3 then
			effect1 = 115
			effect2 = 162
			effect3 = 162
			effect4 = 162
			effect5 = 163
			pos1.x = pos1.x - 1
			pos1.y = pos1.y + 1
			pos2.x = pos2.x - 3
			pos2.y = pos2.y + 1
			pos3.x = pos3.x - 4
			pos3.y = pos3.y + 1
			pos4.x = pos4.x - 5
			pos4.y = pos4.y + 1
			pos5.x = pos5.x - 6
			pos5.y = pos5.y + 1
			area = solarw
		end

		if effect1 ~= 255 then
			doSendMagicEffect(pos1, effect1)
		end
		if effect2 ~= 255 then
			doSendMagicEffect(pos2, effect2)
		end
		if effect3 ~= 255 then
			doSendMagicEffect(pos3, effect3)
		end
		if effect4 ~= 255 then
			doSendMagicEffect(pos4, effect4)
		end
		if effect5 ~= 255 then
			doSendMagicEffect(pos5, effect5)
		end
	
		doAreaCombatHealth(cid, GRASSDAMAGE, getThingPosWithDebug(cid), area, -min, -max, 255)	
		doRegainSpeed(cid)
		setPlayerStorageValue(cid, 3644587, -1)
	end

	local function ChargingBeam(cid)
		if not isCreature(cid) then
			return true
		end
        if not isOnline(cid) then return true end
        if isNumber(cid) then cid = Creature(cid) end
		if isSleeping(cid) and getPlayerStorageValue(cid, 3644587) >= 1 then
			return true
		end
		if isWithFear(cid) and getPlayerStorageValue(cid, 3644587) >= 1 then
			return true
		end
		local tab = {}

		for x = -2, 2 do
			for y = -2, 2 do
				local pos = getThingPosWithDebug(cid)
				pos.x = pos.x + x
				pos.y = pos.y + y
				if pos.x ~= getThingPosWithDebug(cid).x and pos.y ~= getThingPosWithDebug(cid).y then
					table.insert(tab, pos)
				end
			end
		end
		doSendDistanceShoot(tab[math.random(#tab)], getThingPosWithDebug(cid), 37)
	end

	doChangeSpeed(cid, -getCreatureSpeed(cid))
	setPlayerStorageValue(cid, 3644587, 1)          --alterado v1.6  n sei pq mas tava dando debug o.O

	doSendMagicEffect(getThingPosWithDebug(cid), 132) 
	addEvent(useSolarBeam, 650, cid:getId())

return true
end