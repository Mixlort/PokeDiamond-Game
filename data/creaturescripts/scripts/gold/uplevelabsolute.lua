function onAdvance(cid, skill, oldLevel, newLevel)

local config = {
[50] = {item = 2152, count = 5},
[100] = {item = 2152, count = 10},
[150] = {item = 2152, count = 15},
[500] = {item = 12618, count = 1},
}

if skill == 8 then
for level, info in pairs(config) do
if newLevel >= level and (getPlayerStorageStringValue(cid, 30700) == -1 or not (string.find(getPlayerStorageStringValue(cid, 30700), "'" .. level .. "'"))) then
doPlayerAddItem(cid, info.item, info.count)
local sat = getPlayerStorageStringValue(cid, 30700) == -1 and "Values: '" .. level .. "'" or getPlayerStorageStringValue(cid, 30700) .. ",'" .. level .. "'" 
setPlayerStorageStringValue(cid, 30700, sat)
end
end
end

return true
end