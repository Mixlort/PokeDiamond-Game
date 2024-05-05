local msgs = {"use ", ""}

function doAlertReady(cid, id, movename, n, cd)
if movename == "Mega Evolution" then return false end
	if not isCreature(cid) then return false end
	local myball = getPlayerSlotItem(cid, 8)
	if myball.itemid > 0 and getItemAttribute(myball.uid, cd) == "cd:"..id.."" then
		doPlayerSendCancel(cid, getPokeballName(myball.uid).." - "..movename.." (m"..n..") is ready!")
	return false
	end
	local p = getPokeballsInContainer(getPlayerSlotItem(cid, 3).uid)
	if not p or #p <= 0 then return false end
	for a = 1, #p do
		if getItemAttribute(p[a], cd) == "cd:"..id.."" then
			doPlayerSendCancel(cid, getPokeballName(p[a]).." - "..movename.." (m"..n..") is ready!")
		return false
		end
	end
end

function onSay(cid, words, param)
	if param ~= "" then return false end
	if string.len(words) > 3 then return false end

	if #getPlayerPokemons(cid) == 0 then
		doPlayerSendCancel(cid, "You need a pokemon to use moves.")
		return false
	end

	local mypoke = getPlayerPokemons(cid)[1]

	if getCreatureCondition(cid, CONDITION_EXHAUST) then return false end
	if getCreatureName(mypoke) == "Evolution" then return false end

    if getCreatureName(mypoke) == "Ditto" or getCreatureName(mypoke) == "Shiny Ditto" then
       name = getPlayerStorageValue(mypoke, 1010)   --edited
    else
       name = getCreatureName(mypoke)
    end

	local it = string.sub(words, 2, 3)
	local idd = getPlayerSlotItem(cid, 8).uid
	local move = getCreatureName(mypoke) == "Smeargle" and getItemAttribute(idd, "skt1") and movestable[getItemAttribute(idd, "skt1")].move1 or movestable[name].move1
	if getPlayerStorageValue(mypoke, 212123) >= 1 then
    	cdzin = "cm_move"..it..""
	else
    	cdzin = "move"..it..""       --alterado v1.5
	end

	if it == "2" then
    	if getItemAttribute(idd, "skt2") then  
    		move = movestable[getItemAttribute(idd, "skt2")].move2
  		else
        	move = movestable[name].move2
        end
 	elseif it == "3" then
    	if getItemAttribute(idd, "skt3") then  
  			move = movestable[getItemAttribute(idd, "skt3")].move3
  		else
        	move = movestable[name].move3
        end  
 	elseif it == "4" then
    	if getItemAttribute(idd, "skt4") then  
  			move = movestable[getItemAttribute(idd, "skt4")].move4
  		else
        	move = movestable[name].move4
        end 
 	elseif it == "4" then
    	if getItemAttribute(idd, "skt4") then  
 			move = movestable[getItemAttribute(idd, "skt4")].move4
  		else
        	move = movestable[name].move4
        end 
 	elseif it == "5" then
    	if getItemAttribute(idd, "skt5") then  
  			move = movestable[getItemAttribute(idd, "skt5")].move5
  		else
        	move = movestable[name].move5
        end 
 	elseif it == "6" then
    	if getItemAttribute(idd, "skt6") then  
  			move = movestable[getItemAttribute(idd, "skt6")].move6
  		else
        	move = movestable[name].move6
        end 
 	elseif it == "7" then
    	if getItemAttribute(idd, "skt7") then  
 			move = movestable[getItemAttribute(idd, "skt7")].move7
  		else
        	move = movestable[name].move7
        end 
 	elseif it == "8" then
    	if getItemAttribute(idd, "skt8") then  
  			move = movestable[getItemAttribute(idd, "skt8")].move8
  		else
        	move = movestable[name].move8
        end 
 	elseif it == "9" then
 		move = movestable[name].move9
 	elseif it == "10" then
    	move = movestable[name].move10
    elseif it == "11" then
   		move = movestable[name].move11
 	elseif it == "12" then
 		move = movestable[name].move12
 	elseif it == "13" then
    	move = movestable[name].move13
	end 

	if not move then
        local isMega = false
		local isMegaAttr = getItemAttribute(getPlayerSlotItem(cid, 8).uid, "heldy")
        if not isMega then 
            doPlayerSendCancel(cid, "Your pokemon doesn't recognize this move.")
            return false
        end
        local moveTable, index = getNewMoveTable(movestable[name]), 0
        for i = 1, 12 do
            if not moveTable[i] then
                index = i
                break
            end
        end
        if tonumber(it) ~= index then
            doPlayerSendCancel(cid, "Your pokemon doesn't recognize this move.")
            return false
        end
        local needCds = true                   --Coloque false se o pokÃ©mon puder mega evoluir mesmo com spells em cooldown.
        if needCds then
            for i = 1, 12 do
                if getCD(getPlayerSlotItem(cid, 8).uid, "move"..i) > 0 then
                    doPlayerSendCancel(cid, "To mega evolve, all the spells of your pokemon need to be ready.")
                    return false
                end
            end
        end
		local megaEvoClans = {
    	[14643] = {"Volcanic", "Gardestrike"},
    	[14654] = {"Seavell", "Orebound"},
		[14640] = {"Volcanic"},
		[14639] = {"Seavell"},
		[14647] = {"Naturia"},
		[14642] = {"Malefic"},
		[14638] = {"Psycraft"},
		[14648] = {"Orebound"},
		[4000] = {"Volcanic", "Gardestrike"},
		}
    	move = {name = "Mega Evolution", level = 0, cd = 0, dist = 1, target = 0, f = 0, t = "?"}
    end
	
	if getPlayerLevel(cid) < move.level then
	   doPlayerSendCancel(cid, "You need be atleast level "..move.level.." to use this move.")
	   return false
    end

	if getCD(getPlayerSlotItem(cid, 8).uid, cdzin) > 0 and getCD(getPlayerSlotItem(cid, 8).uid, cdzin) < (move.cd + 2) then
		doPlayerSendCancel(cid, "You have to wait "..getCD(getPlayerSlotItem(cid, 8).uid, cdzin).." seconds to use "..move.name.." again.")
		return false
	end

	if getTileInfo(getThingPos(mypoke)).protection then
		doPlayerSendCancel(cid, "Your pokemon cannot use moves while in protection zone.")
		return false
	end
	
    if getPlayerStorageValue(mypoke, 3894) >= 1 then
        doPlayerSendCancel(cid, "You can't attack because you is with fear") --alterado v1.3
        return false 
    end
	                              --alterado v1.6                  
	if (move.name == "Team Slice" or move.name == "Team Claw") and #getPlayerPokemons(cid) < 2 then       
	    doPlayerSendCancel(cid, "Your pokemon need be in a team for use this move!")
    	return false
    end
                                                                     --alterado v1.7 \/\/\/
	if isCreature(getCreatureTarget(cid)) and isInArray(specialabilities["evasion"], getCreatureName(getCreatureTarget(cid))) then 
   		local target = getCreatureTarget(cid)                                                                                       
   		if math.random(1, 100) <= passivesChances["Evasion"][getCreatureName(target)] then 
        	if isCreature(getMasterTarget(target)) then   --alterado v1.6                                                                   
         		doSendMagicEffect(getThingPos(target), 211)
        		doSendAnimatedText(getThingPos(target), "TOO BAD", 215)                                
         		doTeleportThing(target, getClosestFreeTile(target, getThingPos(mypoke)), false)
         		doSendMagicEffect(getThingPos(target), 211)
         		doFaceCreature(target, getThingPos(mypoke))    		
         		return false       --alterado v1.6
      		end
  		end
	end


	if move.target == 1 then

		if not isCreature(getCreatureTarget(cid)) then
			doPlayerSendCancel(cid, "You don\'t have any targets.")
			return false
		end

		if getCreatureCondition(getCreatureTarget(cid), CONDITION_INVISIBLE) then
			return false
		end

		if getCreatureHealth(getCreatureTarget(cid)) <= 0 then
			doPlayerSendCancel(cid, "Your have already defeated your target.")
			return false
		end

		if not isCreature(getPlayerPokemons(cid)[1]) then
			return false
		end

		if getDistanceBetween(getThingPos(getPlayerPokemons(cid)[1]), getThingPos(getCreatureTarget(cid))) > move.dist then
			doPlayerSendCancel(cid, "Get closer to the target to use this move.")
			return false
		end

		if not isSightClear(getThingPos(getPlayerPokemons(cid)[1]), getThingPos(getCreatureTarget(cid)), false) then
			return false
		end
	end

	local newid = 0
	
	-- Cooldown -- 
	local Tiers = {
		[113] = {bonus = Cdown1},
		[114] = {bonus = Cdown2},
		[115] = {bonus = Cdown3},
	}
	local Tier = getItemAttribute(getPlayerSlotItem(cid, 8).uid, "heldx")
	local cdzao = {}
	if Tier and Tier > 112 and Tier < 116 then
		cdzao = math.ceil(move.cd - (move.cd * Tiers[Tier].bonus))
	else
		cdzao = move.cd
	end
	-- Cooldown -- 

    if isSleeping(mypoke) or isSilence(mypoke) then  --alterado v1.5
		doPlayerSendCancel(cid, "Sorry you can't do that right now.")
		return false
	else
		newid = setCD(getPlayerSlotItem(cid, 8).uid, cdzin, cdzao) 
	end
		
	if getPlayerStorageValue(mypoke, 93828) > os.time() then
    	doPlayerSendCancel(cid, "Your pokemon can't use moves right now.")
        return false
    end
		
	local spellMessage = msgs[math.random(#msgs)]..""..move.name.."!"
	if move.name == "Mega Evolution" then
    	spellMessage = "Mega Evolve!"
	end
	doCreatureSay(cid, getPokeName(mypoke)..", "..spellMessage, TALKTYPE_SAY)
	
    local summons = getPlayerPokemons(cid) --alterado v1.6

	addEvent(doAlertReady, move.cd * 1000, cid:getId(), newid, move.name, it, cdzin)
	
    for i = 2, #summons do
        if isCreature(summons[i]) and getPlayerStorageValue(cid, 637501) >= 1 then
            if not summons[i] then return false end
			doCreatureCastSpell(summons[i], move.name)
        end
    end 

    if not mypoke then return false end
	if not doCreatureCastSpell(mypoke, move.name) then 
	    print("Está faltando o move ("..move.name..") no spells.")
	end

	doCreatureAddCondition(cid, playerexhaust)
    doUpdateCooldowns(cid)	
    doUpdateMoves(cid)

	return false
end
