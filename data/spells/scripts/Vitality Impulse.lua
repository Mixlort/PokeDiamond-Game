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

	local function doHealAreatru(alejadao, minimo, maximo, dono)
	if not isCreature(alejadao) then return true end
    if not isOnline(alejadao) then return true end
    if isNumber(alejadao) then alejadao = Creature(alejadao) end
	if getPlayerStorageValue(getCreatureMaster(alejadao), 151141) > 0 then
	local EventStart = addEvent(doHealAreatru, 5000, alejadao:getId(), math.random(100,200), math.random(400,1000))
	setPlayerStorageValue(getCreatureMaster(alejadao), 151141, getPlayerStorageValue(getCreatureMaster(alejadao), 151141) - 1)
		if #getCreatureSummons(getCreatureMaster(alejadao)) == 1 then
    local amount = math.random(minimo, maximo)
    if (getCreatureHealth(alejadao) + amount) >= getCreatureMaxHealth(alejadao) then
        amount = -(getCreatureHealth(alejadao)-getCreatureMaxHealth(alejadao))
    end
    if getCreatureHealth(alejadao) ~= getCreatureMaxHealth(alejadao) then
       doCreatureAddHealth(alejadao, amount)
       doSendAnimatedText(getThingPosWithDebug(alejadao), "+"..amount.." [" .. getPlayerStorageValue(getCreatureMaster(alejadao), 151141) .. "/0]", 65)
		 doSendMagicEffect(getThingPosWithDebug(alejadao), 14)
	else
		 doSendMagicEffect(getThingPosWithDebug(alejadao), 13)
			stopEvent(EventStart);
    end
		if getPlayerStorageValue(getCreatureMaster(alejadao), 151142) > 0 then
    local amounti = math.random(1000, 3500)
    if (getCreatureHealth(alejadao) + amounti) >= getCreatureMaxHealth(alejadao) then
        amounti = -(getCreatureHealth(alejadao)-getCreatureMaxHealth(alejadao))
    end
    if getCreatureHealth(alejadao) ~= getCreatureMaxHealth(alejadao) then
       doCreatureAddHealth(alejadao, amounti)
	   	setPlayerStorageValue(getCreatureMaster(alejadao), 151142, getPlayerStorageValue(getCreatureMaster(alejadao), 151142) - 1)
       doSendAnimatedText(getThingPosWithDebug(alejadao), "+"..amounti.." [FOCUS POWER]", 65)
			 doSendMagicEffect(getThingPosWithDebug(alejadao), 40)
	end
	end
	else
		 doSendMagicEffect(getThingPosWithDebug(alejadao), 13)
			stopEvent(EventStart);
	end
	else
	 doSendMagicEffect(getThingPosWithDebug(alejadao), 13)
		stopEvent(EventStart);
    end
	end
	local function checkHealtru(alejadinho)
        if not isOnline(alejadinho) then return true end
        if isNumber(alejadinho) then alejadinho = Creature(alejadinho) end
	if #getCreatureSummons(alejadinho) == 1 then
		 doSendMagicEffect(getThingPosWithDebug(cid), 14)
		 setPlayerStorageValue(alejadinho, 151141, 25)
		 doHealAreatru(getCreatureSummons(alejadinho)[1], math.random(100,400), math.random(700,1000))
		 end
    end
    
	addEvent(checkHealtru, 1, getCreatureMaster(cid:getId()))

return true
end