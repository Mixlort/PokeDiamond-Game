local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end
function onPlayerCloseChannel(cid) npcHandler:onPlayerCloseChannel(cid) end

npcHandler:addModule(FocusModule:new())

local function creatureGreetCallback(cid, message)
    local npc = Npc()
    local player = Player(cid)
    local pName = Player(cid):getName()
    if player:getStorageValue(storages.firstQuest.drHaroldo) < 0 then
        dialog = "Ah, finalmente você chegou até aqui! Sou o Dr. Haroldo, um cientista apaixonado pelo estudo dos Pokémon e suas habilidades. Vejo que você enfrentou alguns pokemons para chegar até aqui, mas antes de prosseguir, há uma última tarefa que você deve completar."
        buttons = {
            {type = "Button", text = "O que mais preciso fazer?"},
            {type = "Button", text = "Estou pronto para enfrentar esse desafio!"},
        }
        doSendCallForNpc(npc, player, "HiNpc", "#0094eb", nil, dialog, buttons)
    elseif player:getStorageValue(storages.firstQuest.drHaroldo) == 0 then
        if player:hasKilledBossPokemon() then 
            dialog = "Vejo que você retornou, treinador. Sua determinação é admirável, e sua coragem é evidente. Reconheço sua bravura ao enfrentar os desafios desta caverna. Agora, há algo importante que você precisa fazer. Encontre a Professora Selene e conte a ela sobre sua jornada e as descobertas que fez na caverna. Ela certamente ficará interessada em ouvir o que você tem a dizer."
            buttons = {
                {type = "Button", text = "Obrigado, Dr. Haroldo. Farei isso agora mesmo!"},
            }
            doSendCallForNpc(npc, player, "HiNpc", "#0094eb", nil, dialog, buttons)
        else
            dialog = "Derrote todos os pokémons, e depois venha falar comigo!"
            doSendCallForNpc(npc, player, "HiNpc", "#0094eb", nil, dialog)
            npcHandler:releaseFocus(cid)
            return true
        end
    else
        dialog = "Olá novamente, " .. pName .. ". Como anda sua jornada? Se precisar de alguma coisa, estou à disposição para ajudar."
        doSendCallForNpc(npc, player, "HiNpc", "#0094eb", nil, dialog, buttons)
        npcHandler:releaseFocus(cid)
        return true
    end
    return true
end

function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then 
        return false
    end
    local npc = Npc()
    local player = Player(cid)

    if msg == 'O que mais preciso fazer?' then
        dialog = "Antes de prosseguir, você deve provar sua coragem derrotando todos os Pokémon que habitam esta caverna, incluindo o pokemon diferente no fim dela. E depois volte e fale comigo..."
        buttons = {
            {type = "Button", text = "Ok, irei derrota-los e depois volto!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif msg == 'Estou pronto para enfrentar esse desafio!' then
        dialog = "Bom ouvir isso! Mostre sua determinação e coragem derrotando os Pokémon que estão à frente. Estarei aqui esperando para reconhecer sua bravura."
        buttons = {
            {type = "Button", text = "Ok, irei derrota-los e depois volto!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif msg == 'Ok, irei derrota-los e depois volto!' then
        dialog = "Boa sorte, treinador. Que sua jornada seja repleta de descobertas e aventuras! E não esqueça de voltar aqui depois!"
        player:setStorageValue(storages.firstQuest.drHaroldo, 0)
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)    
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'Obrigado, Dr. Haroldo. Farei isso agora mesmo!' then
        dialog = "Boa sorte, treinador. Que sua jornada seja repleta de descobertas e aventuras!"
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
        player:setStorageValue(storages.firstQuest.drHaroldo, 1)
        npcHandler:releaseFocus(cid)
        return true
    end
    return true
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)