local target = 0
local prevTarget = 0
local origPos = 0
local max_distance = 12
local fighting = false
local challenger = 0
local battle_turn = 1		-- don't change
local challenger_turn = 0	-- don't change
---
--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--
local function doSummonGymPokemon(npc)
	local this = npc
	if not isCreature(this) or not ehNPC(this) then return true end  --alterado v1.6
	if #getCreatureSummons(this) >= 1 or target == 0 then return true end
	local it = wildRocket[getPlayerStorageValue(this, 665451)][battle_turn]
	if not it then return true end
	doSummonMonster(this, it.name)              
	local summon = getCreatureSummons(this)[1]
	if not summon then                                              --alterado v1.6
       print("Error in npc: "..getCreatureName(this)..", tring to execute function 'doSummonGymPokemon', poke: "..it.name)
       battle_turn = battle_turn+1
       return true 
    end
	local balleffect = pokeballs["normal"].effect
		if it.ball and pokeballs[it.ball] then
			balleffect = pokeballs[it.ball].effect
		end
	doSendMagicEffect(getThingPos(summon), balleffect)
	setPlayerStorageValue(summon, 10000, balleffect)
	setPlayerStorageValue(summon, 10001, gobackmsgs[math.random(#gobackmsgs)].back:gsub("doka", it.nick ~= "" and it.nick or it.name))
	setPlayerStorageValue(summon, 1007, it.nick ~= "" and it.nick or it.name)
	doSetMonsterGym(summon, target)
	addEvent(adjustWildPoke, 15, summon:getId(), it.optionalLevel)
	if it.nick ~= "" then doCreatureSetNick(summon, it.nick) end
	local name = it.nick ~= "" and it.nick or getCreatureName(this).."s "..it.name    --alterado v1.3
	doCreatureSay(this, gobackmsgs[math.random(#gobackmsgs)].go:gsub("doka", getPlayerStorageValue(summon, 1007)), 1)
	fighting = true
	battle_turn = battle_turn + 1
end
--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--
local function goToOrigPos()
target = 0
selfFollow(0)
fighting = false
challenger = 0
challenger_turn = 0
if #getCreatureSummons(getNpcCid():getId()) >= 1 then
   setPlayerStorageValue(getCreatureSummons(getNpcCid():getId())[1], 1006, 0)
   doCreatureAddHealth(getCreatureSummons(getNpcCid():getId())[1], -getCreatureMaxHealth(getCreatureSummons(getNpcCid():getId())[1]))
end
doChangeSpeed(getNpcCid():getId(), -getCreatureSpeed(getNpcCid():getId()))
doTeleportThing(getNpcCid():getId(), origPos)
end
--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--
local function updateTarget()
if(target == 0) then
    local list = getSpectators(getNpcPos(), 9, 9, false)
    for i = 1, table.getn(list) do
        local _target = list[i]
        if(_target ~= 0) then
           if isPlayer(_target) and isOfficer(_target) and not getTileInfo(getThingPos(_target)).protection then --alterado v1.8
              selfSay(rocketTalks[math.random(#rocketTalks)])
              doNpcSetCreatureFocus(_target) 
              target = _target
              prevTarget = target
              break
           end
        end
    end
end
end
--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--
function onCreatureAppear(cid)
end

function onCreatureDisappear(cid)
end

function onCreatureMove(creature, oldPos, newPos)
--
end
--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--
function onThink()
if not isCreature(getNpcCid():getId()) then return false end  --alterado v1.6
if origPos == 0 then
   origPos = getNpcPos()
end
if getPlayerStorageValue(getNpcCid():getId(), 665451) <= 0 then
   setPlayerStorageValue(getNpcCid():getId(), 665451, math.random(1, 5))
   randOutfit(getNpcCid():getId())
end
updateTarget()
------------------------------------------------------
if getDistanceBetween(getNpcPos(), origPos) >= max_distance or (isCreature(target) and getTileInfo(getThingPos(target)).protection) or getTileInfo(getThingPos(getNpcCid():getId())).protection then  
goToOrigPos()                                                                                                                          --alterado v1.9
end
------------------------------------------------------
if(target == 0) then
if getPlayerStorageValue(getNpcCid():getId(), 154788) <= 0 then
   setPlayerStorageValue(getNpcCid():getId(), 154788, 1)
   doChangeSpeed(getNpcCid():getId(), -getCreatureSpeed(getNpcCid():getId()))
   addEvent(randWalk, 2000, getNpcCid():getId(), 1000, getPlayerStorageValue(getNpcCid():getId(), 154788), target:getId())
end
return true
end 
------------------------------------------------------
local playerPos = getThingPosWithDebug(target)  --alterado v1.6
local myPos = getNpcPos()
------------------------------------------------------
if(myPos.z ~= playerPos.z) then
goToOrigPos()
battle_turn = battle_turn == 1 and battle_turn or battle_turn-1
return true
end
------------------------------------------------------
if getDistanceBetween(playerPos, myPos) > max_distance then
goToOrigPos()
battle_turn = battle_turn == 1 and battle_turn or battle_turn-1
return true
end
------------------------------------------------------
if getDistanceBetween(playerPos, myPos) >= 5 then
if getPlayerStorageValue(getNpcCid():getId(), 154788) >= 1 then
   setPlayerStorageValue(getNpcCid():getId(), 154788, -1)
   doRegainSpeed(getNpcCid():getId()) 
   if isCreature(target) then
      selfFollow(target)
   end
end
end
------------------------------------------------------
if getDistanceBetween(playerPos, myPos) <= 3 then
if getPlayerStorageValue(getNpcCid():getId(), 154788) <= 0 then
   setPlayerStorageValue(getNpcCid():getId(), 154788, 1)
   doChangeSpeed(getNpcCid():getId(), -getCreatureSpeed(getNpcCid():getId()))
   addEvent(randWalk, 2000, getNpcCid():getId(), 1000, getPlayerStorageValue(getNpcCid():getId(), 154788), target:getId())
end
end
------------------------------------------------------
if getDistanceBetween(playerPos, myPos) <= 5 then
   challenger = target
   addEvent(doSummonGymPokemon, 850, getNpcCid():getId())

local change = false

if not isCreature(target) then
   target = 0
   battle_turn = battle_turn == 1 and battle_turn or battle_turn-1
   return true
end

if fighting then

   if not isCreature(getCreatureTarget(getNpcCid():getId())) then
      if #getCreatureSummons(challenger) >= 1 then
         selfAttackCreature(getCreatureSummons(challenger)[1])
		 change = true
	  else
	      if change then
		     change = false
	         challenger_turn = challenger_turn + 1
		  end
      end
   end
		
   if #getCreatureSummons(getNpcCid():getId()) == 0 and isCreature(target) then
      if battle_turn > #wildRocket[getPlayerStorageValue(getNpcCid():getId(), 665451)] then      
         addEvent(doCreateNpc, 300000, ".aRocket", myPos)  --alterado v1.5
         local outfit = getCreatureOutfit(getNpcCid():getId())
         doRemoveCreature(getNpcCid():getId())
         ----------------------------------------
         if outfit.lookType == 605 then      --verifica se o npc eh female.. ;p
             monster = doCreateMonster("aRocketFemale", myPos)
         else
             monster = doCreateMonster("aRocket", myPos)
         end
         ----------------------------------------
         doCloneOut(monster, outfit)
         addEvent(beDrunk, 100, monster:getId())
      end
	     addEvent(doSummonGymPokemon, 1000, getNpcCid():getId())
   end

   if #getCreatureSummons(challenger) <= 0 then
      selfAttackCreature(challenger) 
   end  
end
end
end