function onCastSpell(cid, var)

    ----Novo padrão by Mixlort---------------------------------------------------------------------

    if hasSummons(cid) then
        cid = cid:getSummon()
    end
    
    local baseSpell = mixlortBaseSpell(cid, var.string)
    if not baseSpell then
        print("Erro novo sistema de spells: "..var.string)
        -- return true
    end
    if baseSpell == "true" then
        return true
    elseif baseSpell == "false" then
        return false
    end

    local spell = var.string
    local min = baseSpell.min or 0
    local max = baseSpell.max or 0
    local target = baseSpell.target or cid
    local getDistDelay = baseSpell.getDistDelay or 0

     --Posições--
    posC = getThingPosWithDebug(cid) PosC = posC PosCid = posC posCid = posC
    posT = getThingPosWithDebug(target) PosT = posT PosTarget = posT posTarget = posT 
    posC1 = getThingPosWithDebug(cid) posC1.x = posC1.x+1 posC1.y = posC1.y+1 PosC1 = posC1 posCid1 = posC1 PosCid1 = posC1 
    posT1 = getThingPosWithDebug(target) posT1.x = posT1.x+1 posT1.y = posT1.y+1 PosT1 = posT1 posTarget1 = posT1 PosTarget1 = posT1

    ----Novo padrão by Mixlort---------------------------------------------------------------------

	local p = getThingPosWithDebug(cid)
	local dirr = getCreatureLookDirection(cid)

	if dirr == 0 or dirr == 2 then
	   item = 11439
	else
	   item = 11440
	end

	local wall = {
	[0] = {{x = p.x, y = p.y-1, z = p.z}, {x = p.x+1, y = p.y-1, z = p.z}, {x = p.x-1, y = p.y-1, z = p.z}},
	[2] = {{x = p.x, y = p.y+1, z = p.z}, {x = p.x+1, y = p.y+1, z = p.z}, {x = p.x-1, y = p.y+1, z = p.z}},
	[1] = {{x = p.x+1, y = p.y, z = p.z}, {x = p.x+1, y = p.y+1, z = p.z}, {x = p.x+1, y = p.y-1, z = p.z}},
	[3] = {{x = p.x-1, y = p.y, z = p.z}, {x = p.x-1, y = p.y+1, z = p.z}, {x = p.x-1, y = p.y-1, z = p.z}},
	}

	function removeAllActionIDs(pos, onlyOne)
	if onlyOne then
	    local thing1 = {x=pos.x,y=pos.y,z=pos.z,stackpos=0}
	    local tile1 = getTileThingWithProtect(thing1).uid
	    doSetItemActionId(tile1, 0)
	end  
	n = 0
	for i = 1, #pos do
	    n = n + 1
	    thing = {x=pos[n].x,y=pos[n].y,z=pos[n].z,stackpos=0}
	    local tile = getTileThingWithProtect(thing).uid
	    doSetItemActionId(tile, 0)
	end
	end   


	for i = 1, 3 do
	    if wall[dirr] then
	       local t = wall[dirr]
	       if hasTile(t[i]) and canWalkOnPos2(t[i], true, true, true, true, false) then  --alterado v1.6
	          doCreateItem(item, 1, t[i])
	          --
	          local Tile = getTileThingWithProtect({x=t[i].x,y=t[i].y,z=t[i].z,stackpos=0})
	          doSetItemActionId(Tile.uid, 88072)
	          addEvent(removeAllActionIDs, 15000, t[i], true)
	          --
	          addEvent(doRemoveItemFromPos, 15000, t[i], item, 1)
	       end
	    end
	end 

	local pos = getPosfromArea(cid, wall_1)
	local pos2 = getPosfromArea(cid, wall_2)

	if hasTile({x=p.x,y=p.y,z=p.z,stackpos=0}) then 
	   tile0 = getTileThingWithProtect({x=p.x,y=p.y,z=p.z,stackpos=0}).uid
	end
	doSetItemActionId(tile0, 88070)
	addEvent(removeAllActionIDs, 15000, p, true)

	n = 0

	while n < #pos do
	   if not isCreature(cid) then return true end 
	      n = n+1
	      local tile1 = getTileThingWithProtect({x=pos[n].x,y=pos[n].y,z=pos[n].z,stackpos=0}).uid
	      ---
	      local tile2 = getTileThingWithProtect({x=pos2[n].x,y=pos2[n].y,z=pos2[n].z,stackpos=0}).uid
	      
	      doSetItemActionId(tile1, 88071)
	      doSetItemActionId(tile2, 88070)
	end
	addEvent(removeAllActionIDs, 15000, pos)
	addEvent(removeAllActionIDs, 15000, pos2)   

return true
end