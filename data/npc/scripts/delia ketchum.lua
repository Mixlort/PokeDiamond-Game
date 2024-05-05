local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(player)              npcHandler:onCreatureAppear(player)            end
function onCreatureDisappear(player)           npcHandler:onCreatureDisappear(player)         end
function onCreatureSay(player, type, msg)      npcHandler:onCreatureSay(player, type, msg)    end
function onThink()                          npcHandler:onThink()                        end
function onPlayerCloseChannel(player) npcHandler:onPlayerCloseChannel(player) end
npcHandler:addModule(FocusModule:new())

local function creatureGreetCallback(cid, message)
    local npc = Npc()
	local player = Player(cid)
    dialog = "Filho, você está atrasado para a escolha do seu primeiro pokémon, corra para o laboratório!"
    doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog)
	return true
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)