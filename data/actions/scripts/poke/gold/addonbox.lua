local items = {13089, 13091, 13092, 13090, 13093, 13095, 13096, 13094, 13101, 13098, 13099, 13097, 13102, 13100, 13103, 13104, 13106, 13108, 13109, 13110, 13111, 13112, 13113, 13114, 13115, 13253, 13296, 13297, 13298, 13390, 13391, 13392, 13393}
local chancenada = 10

function onUse(cid, item)
doPlayerAddItem(cid, items[math.random(1, #items)], 1)
-- doBroadcastMessage("O "..getCreatureName(cid).." acabou de ganha um addon parabens!",19)
doRemoveItem(item.uid, 1)
return true
end 