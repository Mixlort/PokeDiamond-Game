local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(player)              npcHandler:onCreatureAppear(player)            end
function onCreatureDisappear(player)           npcHandler:onCreatureDisappear(player)         end
function onCreatureSay(player, type, msg)      npcHandler:onCreatureSay(player, type, msg)    end
function onThink()                          npcHandler:onThink()                        end
function onPlayerCloseChannel(player) npcHandler:onPlayerCloseChannel(player) end
npcHandler:addModule(FocusModule:new())

local storage = storages.pokeInicial

local function creatureGreetCallback(player, message)
    local npc = Npc()
	local player = Player(player)
	local playerName = player:getName()
    if player:getStorageValue(storage) >= 1 then
        dialog = "Você já pegou seu pokémon, boa sorte em sua jornada!"
        doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog)
        npcHandler:releaseFocus(player)
        return false
    elseif player:getStorageValue(storages.openPokeInicial) >= 1 then
        dialog = "Olá "..playerName..", não achou nada na bancada?"
        buttons = {
            {type = "Button", text = "Vou dar mais uma olhada..."},
            {type = "Button", text = "Não achei nada..."},
        }
        doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog, buttons)        
    else
        dialog = "Olá "..playerName..", você veio atrás do seu pokémon inical?"
        buttons = {
            {type = "Button", text = "Sim! Estou ansioso pra me tornar um treinador pokemon!"},
        }
        doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog, buttons)
    end
	return true
end

local function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then 
        return false
    end
    local npc = Npc()
	local player = Player(cid)
	if msg == 'Sim! Estou ansioso pra me tornar um treinador pokemon!' then
	    dialog = "Você chegou atrasado, vários treinadores já vieram e levaram a maioria dos pokémons que tenho aqui em meu laboratório, mas veja o que tem em minha bancada..."
        buttons = {
            {type = "Button", text = "Espero que tenha sobrado pokemons pra mim..."},
        }
	    doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, buttons)
    elseif msg == 'Espero que tenha sobrado pokemons pra mim...' then
        if player:getStorageValue(storages.itensIniciais) >= 1 then
            dialog = "Você já pegou seus itens, boa sorte em sua jornada!"
            doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog)
            npcHandler:releaseFocus(cid)
            return true
        end
        dialog = "Acho que sobram sim, olhe na bancada, ainda tem algumas pokebolas lá! Também vou te dar alguns itens para te ajudar em sua jornada..."
        buttons = {
            {type = "Reward", text = "Itens:", 
                rewards = {
                    {item = 26662, count = 15},
                    {item = 27642, count = 20},
                    {item = 27641, count = 10},
                    {item = 27645, count = 5},
                    {item = 27644, count = 15, close = true}
                } 
            },
        }
        doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, buttons)
        player:setStorageValue(storages.itensIniciais, 1)
		player:addUniqueItem(26662, 15)
		player:addUniqueItem(27642, 20)
		player:addUniqueItem(27641, 10)
		player:addUniqueItem(27645, 5)
		player:addUniqueItem(27644, 15)
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'Vou dar mais uma olhada...' then
        dialog = "Claro, fique a vontade!"
        doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog)
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'Não achei nada...' then
	    dialog = "Olha parece que já levaram todos os pokémons que eu tinha, lamento jovem..."
        buttons = {
            {type = "Button", text = "Acho que cheguei muito tarde..."},
        }
	    doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, buttons)
    elseif msg == 'Acho que cheguei muito tarde...' then
	    dialog = "Na verdade restou apenas um, mas não sei se é uma boa escolha, esse pokemon é um pouco diferente dos outros, é um Pikachu, ele pode ser meio teimoso, mas é um bom pokemon, você quer ele?"
        buttons = {
            {type = "Button", text = "Sim, eu quero!"},
        }
	    doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, buttons)        
    elseif msg == 'Sim, eu quero!' then
        dialog = "Então tudo bem, aqui está, mas tome cuidado!"
        doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog)
        player:addPokeToPlayer("Baby Pikachu", 0, "normal")
        player:setStorageValue(storage, 2)
        npcHandler:releaseFocus(cid)
        return true
	end
	return true
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)