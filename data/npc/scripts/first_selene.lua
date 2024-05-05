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
    if player:getStorageValue(storage) >= 1 then
        dialog = "Obrigado por entregar a pesquisa do professor!"
        doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog)
        npcHandler:releaseFocus(player)
        return false
    else
        dialog = "Olá, você deve ser o ".. player:getName() ..", ouvi muito falar de você, o novo treinador do momento... Você pode me ajudar?"
        buttons = {
            {type = "Button", text = "Claro! O que você precisa?"},
        }
        doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog, buttons)
    end
	return true
end

local function creatureSayCallback(player, type, msg)
    if(not npcHandler:isFocused(player)) then 
        return false
    end
    local npc = Npc()
	local player = Player(player)
	if msg == 'Claro! O que você precisa?' then
	    dialog = "Meu professor esqueceu sua pesquisa no laboratório e precisa dela, mas esta caverna é muito perigosa e eu estou com medo de entrar, teria como você levar a pesquisa até ele pra mim? O nome dele é Professor Antonio..."
        buttons = {
            {type = "Button", text = "Vou ficar feliz em ajudar!"},
        }
	    doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, buttons)
    elseif msg == 'Vou ficar feliz em ajudar!' then
        dialog = "Obrigado! Ele vai te agradecer muito por isso. Mas lembre-se de tomar cuidado, essa caverna é perigosa!"
        doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog)
        npcHandler:releaseFocus(player)
	end
	return true
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)