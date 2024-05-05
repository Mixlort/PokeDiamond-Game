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

	local p = getThingPos(cid)
	local pos1 = {
		[1] = {{x = p.x, y = p.y+4, z = p.z}, {x = p.x+1, y = p.y+4, z = p.z}, {x = p.x+2, y = p.y+3, z = p.z}, {x = p.x+3, y = p.y+2, z = p.z}, {x = p.x+4, y = p.y+1, z = p.z}, {x = p.x+4, y = p.y, z = p.z}},
		[2] = {{x = p.x, y = p.y+3, z = p.z}, {x = p.x+1, y = p.y+3, z = p.z}, {x = p.x+2, y = p.y+2, z = p.z}, {x = p.x+3, y = p.y+1, z = p.z}, {x = p.x+3, y = p.y, z = p.z}},
		[3] = {{x = p.x, y = p.y+2, z = p.z}, {x = p.x+1, y = p.y+2, z = p.z}, {x = p.x+2, y = p.y+1, z = p.z}, {x = p.x+2, y = p.y, z = p.z}},
		[4] = {{x = p.x, y = p.y+1, z = p.z}, {x = p.x+1, y = p.y+1, z = p.z}, {x = p.x+1, y = p.y, z = p.z}},
	}

	local pos2 = {
		[1] = {{x = p.x, y = p.y-4, z = p.z}, {x = p.x-1, y = p.y-4, z = p.z}, {x = p.x-2, y = p.y-3, z = p.z}, {x = p.x-3, y = p.y-2, z = p.z}, {x = p.x-4, y = p.y-1, z = p.z}, {x = p.x-4, y = p.y, z = p.z}},
		[2] = {{x = p.x, y = p.y-3, z = p.z}, {x = p.x-1, y = p.y-3, z = p.z}, {x = p.x-2, y = p.y-2, z = p.z}, {x = p.x-3, y = p.y-1, z = p.z}, {x = p.x-3, y = p.y, z = p.z}},
		[3] = {{x = p.x, y = p.y-2, z = p.z}, {x = p.x-1, y = p.y-2, z = p.z}, {x = p.x-2, y = p.y-1, z = p.z}, {x = p.x-2, y = p.y, z = p.z}},
		[4] = {{x = p.x, y = p.y-1, z = p.z}, {x = p.x-1, y = p.y-1, z = p.z}, {x = p.x-1, y = p.y, z = p.z}},
	}

	local pos3 = {
		[1] = {{x = p.x+4, y = p.y, z = p.z}, {x = p.x+4, y = p.y-1, z = p.z}, {x = p.x+3, y = p.y-2, z = p.z}, {x = p.x+2, y = p.y-3, z = p.z}, {x = p.x+1, y = p.y-4, z = p.z}, {x = p.x, y = p.y-4, z = p.z}},
		[2] = {{x = p.x+3, y = p.y, z = p.z}, {x = p.x+3, y = p.y-1, z = p.z}, {x = p.x+2, y = p.y-2, z = p.z}, {x = p.x+1, y = p.y-3, z = p.z}, {x = p.x, y = p.y-3, z = p.z}},
		[3] = {{x = p.x+2, y = p.y, z = p.z}, {x = p.x+2, y = p.y-1, z = p.z}, {x = p.x+1, y = p.y-2, z = p.z}, {x = p.x, y = p.y-2, z = p.z}},
		[4] = {{x = p.x+1, y = p.y, z = p.z}, {x = p.x+1, y = p.y-1, z = p.z}, {x = p.x, y = p.y-1, z = p.z}},
	}

	local pos4 = {
		[1] = {{x = p.x-4, y = p.y, z = p.z}, {x = p.x-4, y = p.y+1, z = p.z}, {x = p.x-3, y = p.y+2, z = p.z}, {x = p.x-2, y = p.y+3, z = p.z}, {x = p.x-1, y = p.y+4, z = p.z}, {x = p.x, y = p.y+4, z = p.z}},
		[2] = {{x = p.x-3, y = p.y, z = p.z}, {x = p.x-3, y = p.y+1, z = p.z}, {x = p.x-2, y = p.y+2, z = p.z}, {x = p.x-1, y = p.y+3, z = p.z}, {x = p.x, y = p.y+3, z = p.z}},
		[3] = {{x = p.x-2, y = p.y, z = p.z}, {x = p.x-2, y = p.y+1, z = p.z}, {x = p.x-1, y = p.y+2, z = p.z}, {x = p.x, y = p.y+2, z = p.z}},
		[4] = {{x = p.x-1, y = p.y, z = p.z}, {x = p.x-1, y = p.y+1, z = p.z}, {x = p.x, y = p.y+1, z = p.z}},
	}

	local atk = {
		--[atk] = {distance, eff, damage}
		["Electro Field"] = {41, 207, ELECTRICDAMAGE},
		["Petal Tornado"] = {14, 54, GRASSDAMAGE},

		["Flame Wheel"] = {-1, 6, FIREDAMAGE},     --alterado v1.9
	}
	
	local ret = {}                 
		ret.id = 0
		ret.cd = 12
		ret.eff = 48
		ret.check = 0
		ret.spell = spell


	local function sendDist(cid, posi1, posi2, eff, delay)
		if posi1 and posi2 and isCreature(cid) then
            if not isOnline(cid) then return true end
            if isNumber(cid) then cid = Creature(cid) end
		   addEvent(sendDistanceShootWithProtect, delay, cid:getId(), posi1, posi2, eff)   --alterado v1.6
		end
	end
	                                                               
	local function sendDano(cid, pos, eff, delay, min, max)
		if pos and isCreature(cid) then
            if not isOnline(cid) then return true end
            if isNumber(cid) then cid = Creature(cid) end
		   addEvent(doDanoWithProtect, delay, cid:getId(), atk[spell][3], pos, 0, -min, -max, eff)  --alterado v1.6
		end
	end

	local function doTornado(cid)
		if isCreature(cid) then
            if not isOnline(cid) then return true end
            if isNumber(cid) then cid = Creature(cid) end
			for j = 1, 4 do
			   for i = 1, 6 do                                                  --41/207  -- 14/54
			       addEvent(sendDist, 350, cid:getId(), pos1[j][i], pos1[j][i+1], atk[spell][1], i*330)
			       addEvent(sendDano, 350, cid:getId(), pos1[j][i], atk[spell][2], i*300, min, max)
			       addEvent(sendDano, 350, cid:getId(), pos1[j][i], atk[spell][2], i*310, 0, 0)
			       ---
			       addEvent(sendDist, 350, cid:getId(), pos2[j][i], pos2[j][i+1], atk[spell][1], i*330)
			       addEvent(sendDano, 350, cid:getId(), pos2[j][i], atk[spell][2], i*300, min, max)
			       addEvent(sendDano, 350, cid:getId(), pos2[j][i], atk[spell][2], i*310, 0, 0)
			       ----
			       addEvent(sendDist, 800, cid:getId(), pos3[j][i], pos3[j][i+1], atk[spell][1], i*330)
			       addEvent(sendDano, 800, cid:getId(), pos3[j][i], atk[spell][2], i*300, min, max)
			       addEvent(sendDano, 800, cid:getId(), pos3[j][i], atk[spell][2], i*310, 0, 0)
			       ---
			       addEvent(sendDist, 800, cid:getId(), pos4[j][i], pos4[j][i+1], atk[spell][1], i*330)
			       addEvent(sendDano, 800, cid:getId(), pos4[j][i], atk[spell][2], i*300, min, max)
			       addEvent(sendDano, 800, cid:getId(), pos4[j][i], atk[spell][2], i*310, 0, 0)
			   end
			end
		end
	end

	if spell == "Electro Field" then
	   addEvent(doMoveInArea2, 1000, cid:getId(), 0, electro, ELECTRICDAMAGE, 0, 0, spell, ret)
	end

	if spell == "Flame Wheel" then   --alterado v1.8
	   doTornado(cid)
	else
	    for b = 0, 2 do
	        addEvent(doTornado, b*1500, cid:getId())
	    end
	end

return true
end