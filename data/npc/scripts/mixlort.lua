local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(player)              npcHandler:onCreatureAppear(player)            end
function onCreatureDisappear(player)           npcHandler:onCreatureDisappear(player)         end
function onCreatureSay(player, type, msg)      npcHandler:onCreatureSay(player, type, msg)    end
function onThink()                          npcHandler:onThink()                        end
function onPlayerCloseChannel(player) npcHandler:onPlayerCloseChannel(player) end
npcHandler:addModule(FocusModule:new())

local storage = storages.firstQuest

local function creatureGreetCallback(player, message)
    local npc = Npc()
	local player = Player(player)
    dialog = "Testando npc dialog."
    buttons = {
        -- Items 
        {type = "Reward", text = "Reward:", 
            rewards = {
                {item = 26728, count = 1},
                {item = 27681, count = 12, close = true}
            } 
        },

        -- Creatures
        {type = "Defeat", text = "Você deve derrotar os seguintes Pokémons:", 
            creatures = {
                {name = "Charmander", count = 10},
                {name = "Charizard", count = 10},
                {name = "Pidgey", count = 10},
                {name = "Gyarados", count = 10},
                {name = "Blastoise", count = 10},
            }
        },

        -- Pokemon Select
        {type = "PokeStarter", poke = "Charmander"},
        {type = "PokeStarter", poke = "Charizard"},

        -- Items Select
        {type = "itemsSelector", item = "Fire Stone"},
        {type = "itemsSelector", item = "Water Stone"},
        
        -- Botão normal de fala
        {type = "Button", text = "Fim."},
    }
    doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog, buttons)
	return true
end

local function creatureSayCallback(player, type, msg)
    if(not npcHandler:isFocused(player)) then 
        return false
    end
    local npc = Npc()
	local player = Player(player)
	if msgcontains(msg, "Fim.") then
	    dialog = "Fim."
	    doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, nil)
        npcHandler:releaseFocus(player)
	end
	return true
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)