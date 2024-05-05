local priceLinearSlope = 12
local priceLinearIntercept = 1900
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	
	msg = firstToUpper(msg)

	if msgcontains(msg, 'bye') then
		selfSay('Ok then.', cid)
		npcHandler:releaseFocus(cid)
	elseif msgcontains(msg, 'vender') then
		selfSay('Just say the name of the pokemon you wanna sell me.', cid)
		npcHandler.topic[cid] = 1
	elseif (npcHandler.topic[cid] == 1) then
		local player = Player(cid)
		local monsterType = MonsterType(msg)
		if monsterType then
			for i, ball in pairs(player:getPokeballs()) do
				local name = firstToUpper(ball:getPokeName())
				if name == msg then
					local isBallBeingUsed = ball:getSpecialAttribute("isBeingUsed")
					if isBallBeingUsed and isBallBeingUsed == 1 then
						selfSay('Sorry, not possible while using the Pokemon.', cid)
						return true
					end
					local boost = ball:getPokeBoost() or 0
                    local price = getPokePrice(name, boost)
					pokemonNpcMix = msg
					selfSay('Este pokemon custa ' .. price .. ' dolares, voce deseja vende-lo?', cid)
					npcHandler.topic[cid] = 2
					return true
				end
			end
			selfSay('You do not have this pokemon.', cid)
		else
			selfSay('I do not like this pokemon.', cid)
		end
	elseif (npcHandler.topic[cid] == 2) and (msgcontains(msg, 'yes')) then
		local player = Player(cid)
		local monsterType = MonsterType(pokemonNpcMix)
		if monsterType then
			for i, ball in pairs(player:getPokeballs()) do
				local name = firstToUpper(ball:getPokeName())
				if name == pokemonNpcMix then
					local isBallBeingUsed = ball:getSpecialAttribute("isBeingUsed")
					if isBallBeingUsed and isBallBeingUsed == 1 then
						selfSay('Sorry, not possible while using the Pokemon.', cid)
						return true
					end
					local boost = ball:getPokeBoost() or 0
                    local price = getPokePrice(name, boost)
					if ball:remove() then
						selfSay('Take ' .. price .. ' by your ' .. name .. ' boost ' .. boost .. '. Thanks!', cid)
						player:addMoney(price)
                        player:pokeBarRemoveOnePoke(ball)
						npcHandler.topic[cid] = 0
					end
					return true
				end
			end
			selfSay('You do not have this pokemon.', cid)
		else
			selfSay('I do not like this pokemon.', cid)
		end
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
