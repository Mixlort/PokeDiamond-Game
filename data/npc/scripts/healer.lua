local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

local function creatureGreetCallback(cid, message)
    if not isOnline(cid) then
        return false
    end
	local player = Player(cid)
	local playerHealth = player:getHealth()
	local playerMaxHealth = player:getMaxHealth()

	if playerHealth < playerMaxHealth then
		player:addHealth(playerMaxHealth - playerHealth)
	end
		
	-- if hasSummons(player) then
	-- 	local usingBall = player:getUsingBall()
    --     local ballKeyTwo = getBallKey(usingBall:getId())		
    --     doRemoveSummon(player:getId(), balls[ballKeyTwo].effectRelease, false, true, balls[ballKeyTwo].missile)
	-- end

	for i, ball in pairs(player:getPokeballs()) do
        for c = 1, 15 do
            local str = "move"..c
            setCD(ball, str, 0)
        end
        setCD(ball, "control", 0)
        setCD(ball, "blink", 0)
        doCureBallStatus(ball, "all")
        cleanBuffs2(ball)
       	ball:setSpecialAttribute("pokeHealth", ball:getPokeMaxHealth())
        -- transformBallItem(ball, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        player:pokeBarUpdatePoke(ball) 
	end
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    if hasSummons(player) then
	    local summon = player:getSummons()[1]
        doCreatureAddHealth(summon, getCreatureMaxHealth(summon))
        summon:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    end

    selfSay("Todos os seus Pokemons foram curados. Tome cuidado por aí!", cid)

	return false
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)
npcHandler:addModule(FocusModule:new())
