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
    if player:getStorageValue(storages.firstQuest.professoraSelene) > 0 then
        dialog = "Você já recebeu uma pedra de evolução, jovem treinador. Não posso te dar outra."
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
        npcHandler:releaseFocus(cid)
        return true
    end
    if player:getStorageValue(storages.firstQuest.drHaroldo) < 0 and player:getStorageValue(storages.firstQuest.professoraSelene) < 0 then
        dialog = "Olá, jovem treinador! Sou a Professora Selene, uma pesquisadora dedicada aos segredos das criaturas pokémon. Vejo que você está prestes a adentrar a Caverna das Sombras, um local conhecido por abrigar Pokémons raros e misteriosos. Estou aqui para fornecer informações valiosas sobre os desafios que você encontrará lá dentro. Você está preparado para esta jornada?"
        buttons = {
            {type = "Button", text = "Sim, estou pronto para enfrentar os desafios!"},
            {type = "Button", text = "Estou nervoso, mas acho que posso lidar com isso."},
            {type = "Button", text = "Eu não tenho certeza se estou preparado..."},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif player:getStorageValue(storages.firstQuest.drHaroldo) <= 0 then
        dialog = "Você precisa voltar á caverna, derrotar todos os pokemons, falar com o Dr. Haroldo e depois voltar aqui!"
        buttons = {
            {type = "Button", text = "Ok, vou fazer isso agora mesmo!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
        npcHandler:releaseFocus(cid)
        return true
    elseif player:getStorageValue(storages.firstQuest.drHaroldo) == 1 then
        dialog = "Ah, você retornou! Vejo que enfrentou os desafios da caverna com bravura. Estou impressionada com sua determinação. Agora, me conte, o que encontrou lá dentro? Os Pokémons da caverna são fascinantes, não são?"
        buttons = {
            {type = "Button", text = "Encontrei vários Pokémons interessantes! Foi uma experiência incrível."},
            {type = "Button", text = "Foi uma luta árdua, mas consegui derrotar todos os Pokémons da caverna."},
            {type = "Button", text = "A caverna estava cheia de desafios, mas infelizmente não consegui superar todos."},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    end
end

function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
    local npc = Npc()
    local player = Player(cid)

    if player:getStorageValue(storages.firstQuest.professoraSelene) > 0 then
        dialog = "Você jé recebeu uma pedra de evolução, jovem treinador. Não posso te dar outra."
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'Sim, estou pronto para enfrentar os desafios!' then
        dialog = "Fantástico! Lembre-se, cada Pokémon encontrado dentro da caverna possui características únicas. Estude-os com cuidado e utilize estratégias inteligentes para superar qualquer obstáculo."
        buttons = {
            {type = "Button", text = "Obrigado pelas dicas, Professora Selene!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif msg == 'Estou nervoso, mas acho que posso lidar com isso.' then
        dialog = "Não se preocupe, a ansiedade é natural em situações como essa. Confie em seus Pokémons e em suas habilidades como treinador. Estou aqui para ajudá-lo no que for necessário."
        buttons = {
            {type = "Button", text = "Obrigado pelas dicas, Professora Selene!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif msg == 'Eu não tenho certeza se estou preparado...' then
        dialog = "Não subestime a importância da preparação, jovem treinador. Se você sentir que não está pronto, talvez seja melhor retornar quando estiver mais confiante. A segurança vem sempre em primeiro lugar."
        buttons = {
            {type = "Button", text = "Você está certa, eu vou me preparar melhor antes de entrar."},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif msg == 'Obrigado pelas dicas, Professora Selene!' then
        dialog = "De nada, jovem treinador. Boa sorte em sua jornada. Agora vá e derrote todos os pokemons daquela caverna!."
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'Você está certa, eu vou me preparar melhor antes de entrar.' then
        dialog = "Boa escolha, jovem treinador. A preparação é essencial para enfrentar os desafios que aguardam você na Caverna das Sombras. Quando se sentir pronto, volte e me conte sobre suas descobertas."
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'Encontrei vários Pokémons interessantes! Foi uma experiência incrível.' then
        dialog = "Maravilhoso! Cada encontro com pokemons selvagens é uma oportunidade de aprender e crescer como treinador. Espero que tenha aproveitado ao máximo essa experiência. Eu trouxe comigo algumas pedras de evolução, estava guardando para entregar ao professor Carvalho, mas uma não vai fazer diferença, vou te dar para ajudar em sua jornada, escolha uma delas..."
        buttons1 = {
            {type = "Button", text = "Leaf Stone"},
            {type = "Button", text = "Fire Stone"},
            {type = "Button", text = "Water Stone"},
        }
        buttons2 = {
            {type = "Button", text = "Leaf Stone"},
            {type = "Button", text = "Fire Stone"},
            {type = "Button", text = "Water Stone"},
            {type = "Button", text = "Não existe nenhuma outra opção de pedra de evolução que esteja sobrando com você? O professor Carvalho me deu um pokémon diferente..."},
        }
        if player:getStorageValue(storages.pokeInicial) == 2 then
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons2)
        else
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons1)
        end
    elseif msg == 'Foi uma luta árdua, mas consegui derrotar todos os Pokémons da caverna.' then
        dialog = "Impressionante! A Caverna das Sombras é um local desafiador, e superar todos os pokemon que lá habitam é uma grande conquista. Você provou ser um treinador corajoso e habilidoso. Como recompensa, vou te dar uma pedra de evolução, escolha uma delas..."
        buttons1 = {
            {type = "Button", text = "Leaf Stone"},
            {type = "Button", text = "Fire Stone"},
            {type = "Button", text = "Water Stone"},
        }
        buttons2 = {
            {type = "Button", text = "Leaf Stone"},
            {type = "Button", text = "Fire Stone"},
            {type = "Button", text = "Water Stone"},
            {type = "Button", text = "Não existe nenhuma outra opção de pedra de evolução que esteja sobrando com você O professor Carvalho me deu um pokemon diferente..."},
        }
        if player:getStorageValue(storages.pokeInicial) == 2 then
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons2)
        else
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons1)
        end
    elseif msg == 'A caverna estava cheia de desafios, mas infelizmente não consegui superar todos.' then
        dialog = "Impressionante! A Caverna das Sombras é um local desafiador, e superar todos os pokemon que lá habitam é uma grande conquista. Você provou ser um treinador corajoso e habilidoso. Como recompensa, vou te dar uma pedra de evolução, escolha uma delas..."
        buttons1 = {
            {type = "Button", text = "Leaf Stone"},
            {type = "Button", text = "Fire Stone"},
            {type = "Button", text = "Water Stone"},
        }
        buttons2 = {
            {type = "Button", text = "Leaf Stone"},
            {type = "Button", text = "Fire Stone"},
            {type = "Button", text = "Water Stone"},
            {type = "Button", text = "Não existe nenhuma outra opção de pedra de evolução que esteja sobrando com você O professor Carvalho me deu um pokemon diferente..."},
        }
        if player:getStorageValue(storages.pokeInicial) == 2 then
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons2)
        else
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons1)
        end
    elseif msg == 'Não existe nenhuma outra opção de pedra de evolução que esteja sobrando com você? O professor Carvalho me deu um pokémon diferente...' then
        dialog = "Ah, entendo. Você recebeu um Pokémon diferente do que eu esperava. Nesse caso, vou te dar uma pedra de evolução que pode ser útil para o seu Pokémon."
        buttons = {
            {type = "Button", text = "Thunder Stone"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif msg == 'Leaf Stone' or msg == 'Fire Stone' or msg == 'Water Stone' then
        if player:getStorageValue(storages.firstQuest.professoraSelene) > 0 then
            dialog = "Você jé recebeu uma pedra de evolução, jovem treinador. Não posso te dar outra."
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
            npcHandler:releaseFocus(cid)
            return true
        end
        player:addItem(msg, 1)
        player:setStorageValue(storages.firstQuest.professoraSelene, 1)
        dialog = "Ótima escolha! Essa é uma pedra de evolução muito especial, capaz de transformar certos Pokémon em criaturas ainda mais poderosas. Espero que ela te ajude em sua jornada. Boa sorte, jovem treinador!"
        buttons = {
            {type = "Button", text = "Obrigado, Professora Selene!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'Thunder Stone' then
        if player:getStorageValue(storages.firstQuest.professoraSelene) > 0 then
            dialog = "Você jé recebeu uma pedra de evolução, jovem treinador. Não posso te dar outra."
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
            npcHandler:releaseFocus(cid)
            return true
        end
        player:addItem(msg, 1)
        player:setStorageValue(storages.firstQuest.professoraSelene, 1)
        dialog = "Ótima escolha! Essa é uma pedra de evolução muito especial, capaz de transformar certos Pokémon em criaturas ainda mais poderosas. Espero que ela te ajude em sua jornada. Boa sorte, jovem treinador!"
        buttons = {
            {type = "Button", text = "Obrigado, Professora Selene!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
        npcHandler:releaseFocus(cid)
        return true
    end
    return true
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)