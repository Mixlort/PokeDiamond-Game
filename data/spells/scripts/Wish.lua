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

	local function doHealArea(cid, minimo, maximo)
        if not isOnline(cid) then return true end
        if isNumber(cid) then cid = Creature(cid) end
    local amount = math.random(minimo, maximo)
    if (getCreatureHealth(cid) + amount) >= getCreatureMaxHealth(cid) then
        amount = -(getCreatureHealth(cid)-getCreatureMaxHealth(cid))
    end
    if getCreatureHealth(cid) ~= getCreatureMaxHealth(cid) then
       doCreatureAddHealth(cid, amount)
       doSendAnimatedText(getThingPosWithDebug(cid), "+"..amount.."", 65)
    end
    end
	local function checkHeal(alejadinho)
        if not isOnline(alejadinho) then return true end
        if isNumber(alejadinho) then alejadinho = Creature(alejadinho) end
	if #getCreatureSummons(alejadinho) == 1 then
		 doHealArea(getCreatureSummons(alejadinho)[1], ((getCreatureMaxHealth(getCreatureSummons(alejadinho)[1]) * math.random(1,25)) / 100), ((getCreatureMaxHealth(getCreatureSummons(alejadinho)[1]) * math.random(30,50)) / 100))
		 doSendMagicEffect(getThingPosWithDebug(cid), 132)
		 end
    end
    
	addEvent(checkHeal, 3500, getCreatureMaster(cid:getId()))

return true
end