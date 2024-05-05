local pokes = {
["Pikachu Super"] = {lookType=1801, speed = 1000},
["Poliwag"] = {lookType=278, speed = 320},
["Poliwhirl"] = {lookType=137, speed = 480},
["Seaking"] = {lookType=269, speed = 520},
["Dewgong"] = {lookType=183, speed = 700},
["Blastoise"] = {lookType=184, speed = 850},
["Tentacruel"] = {lookType=185, speed = 750},
["Lapras"] = {lookType=186, speed = 960},
["Gyarados"] = {lookType=187, speed = 1050},
["Omastar"] = {lookType=188, speed = 680},
["Kabutops"] = {lookType=189, speed = 840},
["Poliwrath"] = {lookType=190, speed = 680},
["Vaporeon"] = {lookType=191, speed = 800},
["Staryu"] = {lookType=266, speed = 385},
["Starmie"] = {lookType=267, speed = 685},
["Goldeen"] = {lookType=268, speed = 355},
["Seadra"] = {lookType=270, speed = 655},
["Golduck"] = {lookType=271, speed = 760},
["Squirtle"] = {lookType=273, speed = 365},
["Wartortle"] = {lookType=275, speed = 605},
["Tentacool"] = {lookType=277, speed = 340},
["Snorlax"] = {lookType=300, speed = 500},
["Piplup"] = {lookType=1211, speed = 350},
["Prinplup"] = {lookType=1210, speed = 400},
["Empoleon"] = {lookType=1213, speed = 550},
----------------Shiny----------------------
["Shiny Blastoise"] = {lookType=658, speed = 935},
["Shiny Tentacruel"] = {lookType=1014, speed = 825},
["Shiny Gyarados"] = {lookType=1030, speed = 1155},
["Shiny Vaporeon"] = {lookType=1032, speed = 880},        --alterado v1.6
["Shiny Seadra"] = {lookType=1025, speed = 720.5},
["Shiny Tentacool"] = {lookType=1013, speed = 374},
["Shiny Snorlax"] = {lookType=1035, speed = 550},
----------------Johto----------------------
["Mantine"] = {lookType=636, speed = 820},
["Totodile"] = {lookType=637, speed = 360},
["Croconow"] = {lookType=638, speed = 590},
["Feraligatr"] = {lookType=645, speed = 900},
["Marill"] = {lookType=639, speed = 340},
["Azumarill"] = {lookType=642, speed = 680},
["Quagsire"] = {lookType=643, speed = 740},
["Shiny Quagsire"] = {lookType=39, speed = 1000},
["Kingdra"] = {lookType=644, speed = 1020},
["Octillery"] = {lookType=641, speed = 600},
["Wooper"] = {lookType=640, speed = 315},
-------------sinooh----------------------
["Buizel"] = {lookType=1160, speed = 315},
["Floatzel"] = {lookType=1158, speed = 350},
["Gastrodon east"] = {lookType=1222, speed = 200},
["Gastrodon"] = {lookType=1221, speed = 200},
["Finneon"] = {lookType=1193, speed = 120},
["Lumineon"] = {lookType=1192, speed = 120},
-----------hoen-------------------------
["Walrein"] = {lookType=1406, speed = 120},
["Wingull"] = {lookType=1400, speed = 120},
["Wailmer"] = {lookType=1399, speed = 120},
["Swampert"] = {lookType=1395, speed = 120},
["Ludicolo"] = {lookType=1392, speed = 120},
["Sharpedo"] = {lookType=1388, speed = 120},
["Huntail"] = {lookType=1382, speed = 120},
["Linoone"] = {lookType=1379, speed = 120},
["Spheal"] = {lookType=1378, speed = 120},
["Mudkip"] = {lookType=1377, speed = 120},
["Whiscash"] = {lookType=1376, speed = 120},
["Marshtomp"] = {lookType=1375, speed = 120},
["Luvdisc"] = {lookType=1374, speed = 120},
["Lombre"] = {lookType=1373, speed = 120},
["Barboach"] = {lookType=1372, speed = 120},
["Shiny Lapras"] = {lookType=1709, speed = 1200},
["Shiny Milotic"] = {lookType=1594, speed = 1200},
["Milotic"] = {lookType=1492, speed = 700},
}

local configs = {
[4647] = {x = -2, y = 0},
[4645] = {x = 2, y = 0},
[4646] = {x = 0, y = 2},
[4644] = {x = 0, y = -2},
}
function onUse(cid, item, fromPosition, itemEx, toPosition)
local playerpos = getCreaturePosition(cid)
if #getCreatureSummons(cid) <= 0 and getPlayerStorageValue(cid, 63215) <= 0 then
return doPlayerSendCancel(cid, "You need a pokemon to surf.")
end
local l = false
for i,x in pairs(pokes) do
if getPlayerStorageValue(cid, 63215) <= 0 and i:lower() == getCreatureName(getCreatureSummons(cid)[1]):lower() then
l = true
end
end
if not l and getPlayerStorageValue(cid, 63215) <= 0 then
return doPlayerSendCancel(cid, "This pokemon can't surf.")
end
if getPlayerStorageValue(cid, 63215) <= 0 then
doTeleportThing(cid, {x=playerpos.x+configs[itemEx.itemid].x, y=playerpos.y+configs[itemEx.itemid].y, z=playerpos.z})
setPlayerStorageValue(cid, 63215, 1)
doSetCreatureOutfit(cid, pokes[getCreatureName(getCreatureSummons(cid)[1])], -1)
doCreatureSay(cid, "Let's surf, "..getCreatureName(getCreatureSummons(cid)[1]), 19)
setPlayerStorageValue(cid, 61209, getCreatureMaxHealth(getCreatureSummons(cid)[1]))
setPlayerStorageValue(cid, 61210, getCreatureHealth(getCreatureSummons(cid)[1]))
doChangeSpeed(cid, pokes[getCreatureName(getCreatureSummons(cid)[1])].speed)
doRemoveCreature(getCreatureSummons(cid)[1])
else
doTeleportThing(cid, {x=playerpos.x-configs[itemEx.itemid].x, y=playerpos.y-configs[itemEx.itemid].y, z=playerpos.z})
setPlayerStorageValue(cid, 63215, 0)
doRemoveCondition(cid, CONDITION_OUTFIT)
local item = getPlayerSlotItem(cid, 8)
doCreatureSay(cid, "" .. getItemAttribute(item.uid, "pokeName"):match("This is (.-)'s pokeball.")..", Im tired of surfing!", 19)
pk = doSummonCreature(getItemAttribute(item.uid, "pokeName"):match("This is (.-)'s pokeball."), getCreaturePosition(cid))
doConvinceCreature(cid, pk)
registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp")
setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))
doChangeSpeed(cid, getCreatureBaseSpeed(cid)-getCreatureSpeed(cid))
end
return true
end