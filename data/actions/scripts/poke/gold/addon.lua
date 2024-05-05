function onUse(cid, item, fromPosition, itemEx, toPosition)
local addons = {
-- Shiny Alakazam
[13089] = {pokemon= "Shiny Alakazam", looktype = 2013, nome = "Adventurer addon", fly =  0, ride = 0, surf = 0},
[13091] = {pokemon= "Shiny Alakazam", looktype = 2014, nome = "Grey hat addon", fly =  0, ride = 0, surf = 0},
[13092] = {pokemon= "Shiny Alakazam", looktype = 2016, nome = "Ret hat addon", fly =  0, ride = 0, surf = 0},
[13090] = {pokemon= "Shiny Alakazam", looktype = 2015, nome = "Purple hat addon", fly =  0, ride = 0, surf = 0},
[13394] = {pokemon= "Shiny Alakazam", looktype = 2165, nome = "Immortal Shaman addon", fly =  0, ride = 0, surf = 0},
-- Alakazam
[13093] = {pokemon= "Alakazam", looktype = 2009, nome = "Adventurer addon", fly =  0, ride = 0, surf = 0},
[13095] = {pokemon= "Alakazam", looktype = 2010, nome = "Grey hat addon", fly =  0, ride = 0, surf = 0},
[13096] = {pokemon= "Alakazam", looktype = 2012, nome = "Ret hat addon", fly =  0, ride = 0, surf = 0},
[13094] = {pokemon= "Alakazam", looktype = 2011, nome = "Purple hat addon", fly =  0, ride = 0, surf = 0},
[13395] = {pokemon= "Alakazam", looktype = 2164, nome = "Immortal Shaman addon", fly =  0, ride = 0, surf = 0},
-- Shiny Tropius
[13106] = {pokemon= "Shiny Tropius", looktype = 2069, nome = "Desert flower addon", fly =  2070, ride = 0, surf = 0},
[13101] = {pokemon= "Shiny Tropius", looktype = 2019, nome = "Sorcerer addon", fly =  2065, ride = 0, surf = 0},
[13380] = {pokemon= "Shiny Tropius", looktype = 2149, nome = "Golden king addon", fly =  2148, ride = 0, surf = 0},

-- Shiny Metagross
[13098] = {pokemon= "Shiny Metagross", looktype = 2021, nome = "King's crown addon", fly =  0, ride = 2064, surf = 0},
[13099] = {pokemon= "Shiny Metagross", looktype = 2020, nome = "Queen's crown addon", fly =  0, ride = 2067, surf = 0},

-- Shiny Clefable
[13097] = {pokemon= "Shiny Clefable", looktype = 2068, nome = "Angel addon", fly =  0, ride = 0, surf = 0},

-- Clefable 
[13102] = {pokemon= "Clefable", looktype = 2025, nome = "Angel addon", fly =  0, ride = 0, surf = 0},

-- Shiny Jynx
[13100] = {pokemon= "Shiny Jynx", looktype = 2023, nome = "Witch addon", fly =  0, ride = 0, surf = 0},

-- Metagross
[13103] = {pokemon= "Metagross", looktype = 2018, nome = "King's crown addon", fly =  0, ride = 2063, surf = 0},
[13104] = {pokemon= "Metagross", looktype = 2017, nome = "Queen's crown addon", fly =  0, ride = 2066, surf = 0},

-- Halloween
[13105] = {pokemon= "Elder Charizard", looktype = 2074, nome = "Halloween addon", fly =  2072, ride = 0, surf = 0},
[13107] = {pokemon= "Charizard", looktype = 2073, nome = "Halloween addon", fly =  2071, ride = 0, surf = 0},
[13249] = {pokemon= "Gengar", looktype = 2116, nome = "Halloween addon", fly =  2118, ride = 0, surf = 0},
[13251] = {pokemon= "Shiny Gengar", looktype = 2117, nome = "Halloween addon", fly =  2119, ride = 0, surf = 0},

-- Shiny Blastoise
[13108] = {pokemon= "Shiny Blastoise", looktype = 2078, nome = "Purple ninja pack addon", fly =  0, ride = 0, surf = 2083},
[13109] = {pokemon= "Shiny Blastoise", looktype = 2076, nome = "Orange ninja pack addon", fly =  0, ride = 0, surf = 2088},
[13110] = {pokemon= "Shiny Blastoise", looktype = 2075, nome = "Red ninja pack addon", fly =  0, ride = 0, surf = 2090},
[13111] = {pokemon= "Shiny Blastoise", looktype = 2077, nome = "Blue ninja pack addon", fly =  0, ride = 0, surf = 2086},

-- Blastoise
[13112] = {pokemon= "Blastoise", looktype = 2082, nome = "Purple ninja pack addon", fly =  0, ride = 0, surf = 2083},
[13113] = {pokemon= "Blastoise", looktype = 2080, nome = "Orange ninja pack addon", fly =  0, ride = 0, surf = 2087},
[13114] = {pokemon= "Blastoise", looktype = 2079, nome = "Red ninja pack addon", fly =  0, ride = 0, surf = 2089},
[13115] = {pokemon= "Blastoise", looktype = 2081, nome = "Blue ninja pack addon", fly =  0, ride = 0, surf = 2085},

-- Shiny Blissey
[13253] = {pokemon= "Shiny Blissey", looktype = 2120, nome = "Nurse addon", fly =  0, ride = 0, surf = 0},
[13252] = {pokemon= "Shiny Blissey", looktype = 2121, nome = "witch addon", fly =  0, ride = 0, surf = 0},

-- Kiss
[13264] = {pokemon= "Shiny Togekiss", looktype = 2122, nome = "Batman addon", fly =  2123, ride = 0, surf = 0},
[13301] = {pokemon= "Togekiss", looktype = 2138, nome = "Silly king", fly =  2137, ride = 0, surf = 0},
[13327] = {pokemon= "Shiny Togekiss", looktype = 2143, nome = "Silly king", fly =  2144, ride = 0, surf = 0},

[13390] = {pokemon= "Togekiss", looktype = 2155, nome = "Adventurer Addon", fly =  2156, ride = 0, surf = 0},
[13391] = {pokemon= "Shiny Togekiss", looktype = 2157, nome = "Adventurer Addon", fly =  2158, ride = 0, surf = 0},

[13392] = {pokemon= "Togekiss", looktype = 2159, nome = "Super Man Addon", fly =  2160, ride = 0, surf = 0},
[13393] = {pokemon= "Shiny Togekiss", looktype = 2161, nome = "Super Man Addon", fly =  2162, ride = 0, surf = 0},

[13408] = {pokemon= "Miltank", looktype = 2171, nome = "Milktank", fly =  2162, ride = 0, surf = 0},
[13410] = {pokemon= "Miltank", looktype = 2173, nome = "Farmer Costume", fly =  0, ride = 0, surf = 0},
[13407] = {pokemon= "Electabuzz", looktype = 2191, nome = "Thor Costume", fly =  0, ride = 0, surf = 0},
[13409] = {pokemon= "Electabuzz", looktype = 2175, nome = "Guitar Costume", fly =  0, ride = 0, surf = 0},

-- lucario

[13426] = {pokemon= "Shiny Lucario", looktype = 2203, nome = "Natal Addon", fly =  0, ride = 0, surf = 0},

-- Shiny Dragonite
[13296] = {pokemon= "Shiny Dragonite", looktype = 2127, nome = "Yellow snow pack addon", fly =  2128, ride = 0, surf = 0},
[13298] = {pokemon= "Shiny Dragonite", looktype = 2130, nome = "Green snow pack addon", fly =  2129, ride = 0, surf = 0},
[13297] = {pokemon= "Shiny Dragonite", looktype = 2131, nome = "Red snow pack addon", fly =  2132, ride = 0, surf = 0},
-- Gardevoir
[13326] = {pokemon= "Shiny Gardevoir", looktype = 2142, nome = "Caipira addon", fly =  0, ride = 0, surf = 0},

}
 
if #getCreatureSummons(cid) > 0 then
if getPlayerLanguage(cid) == 0 then
doPlayerTextMessage(cid, 22, "Por favor volte seu pokémon.")
end
if getPlayerLanguage(cid) == 1 then
doPlayerTextMessage(cid, 22, "Por favor, vuelve su pokémon.")
end	
if getPlayerLanguage(cid) == 2 then
doPlayerTextMessage(cid, 22, "Please back your pokémon.")
end
return false
end     
local addon = addons[item.itemid].looktype
local fly = addons[item.itemid].fly
local ride = addons[item.itemid].ride
local surf = addons[item.itemid].surf
local addonlook = addons[item.itemid].nome
 
local pb = getPlayerSlotItem(cid, 8).uid
local pk = addons[item.itemid].pokemon
 
if getItemAttribute(pb,"pokeName") ~= pk then
if getPlayerLanguage(cid) == 0 then
doPlayerSendCancel(cid, "Desculpa, você não pode usar esse addon nesse pokémon.")
end

if getPlayerLanguage(cid) == 1 then
doPlayerSendCancel(cid ,"Lo sentimos, no se puede utilizar este addon en esse pokémon.")
end
	
if getPlayerLanguage(cid) == 2 then
doPlayerSendCancel(cid, "Sorry, you can't use this addon on this pokémon.")
end
return false
end
 
if getItemAttribute(pb, "pokeballusada") == 0 then
doRemoveItem(item.uid, 1)
doSendMagicEffect(fromPosition, 173)
doSetItemAttribute(pb,"addon",addon)
doSetItemAttribute(pb,"addonfly",fly)
doSetItemAttribute(pb,"addonride",ride)
doSetItemAttribute(pb,"addonsurf",surf)
doSetItemAttribute(pb,"addonlook",addonlook)
return true
end
end