function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
local a = {"Misdreavus"}
if isSummon(cid) and isInArray(a, getCreatureName(cid)) then
return true
else
doTeleportThing(cid, fromPosition, true)
end
end