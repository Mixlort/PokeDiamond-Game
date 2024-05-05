function onUse(cid, item, fromPosition, itemEx, toPosition)
 
local meuovo = {
    qnt = 1,      
    maxi = 30,      
    chance = 64,  
    boost_fail = 6,  
	falhar = 5,
}
 
local minhabola = getPlayerSlotItem(cid, 8).uid
local boost = getItemAttribute(minhabola, "boost") or 0
 
    if minhabola <= 0 then
        return doPlayerSendCancel(cid, "Coloque um pok�mon no Main Slot!")
    elseif boost >= meuovo.maxi then
        return doPlayerSendCancel(cid, "Seu pok�mon j� se encontra no n�vel m�ximo de boost!")
    end
    
    if boost >= meuovo.boost_fail then
        if math.random(1, 100) <= meuovo.chance then
            doItemSetAttribute(minhabola, "boost", (boost + meuovo.qnt))
            doSendMagicEffect(fromPosition, 173)
            doRemoveItem(item.uid, 1)
        else
            doPlayerSendCancel(cid,"Falhou!")
			doItemSetAttribute(minhabola, "boost", (meuovo.falhar))
            doRemoveItem(item.uid, 1)
        end
    else
        doItemSetAttribute(minhabola, "boost", (boost + meuovo.qnt))
		doSendMagicEffect(fromPosition, 173)
        doRemoveItem(item.uid, 1)
    end
    return true
end