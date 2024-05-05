function onUse(cid, item, frompos, item2, topos)

        if item2.itemid <= 0 or not isPokeball(item2.itemid) then
                doPlayerSendCancel(cid, "Please, use revive only on pokeballs.")
        return true
        end

        local cooldownMoves = {
        ["Selfdestruct"] = 30,
        ["Selfdestruction"] = 30,
        }
        for a, b in pairs (pokeballs) do
                if item2.itemid == b.on or item2.itemid == b.off then  --edited deixei igual ao do PXG
                        doTransformItem(item2.uid, b.on)
                        doSetItemAttribute(item2.uid, "hp", 1)
                        local name = getItemAttribute(item2.uid, "pokeName")
                        for c = 1, 15 do
                                local str = "move"..c
                                local move = movestable[name][str]; move = move and cooldownMoves[move.name]
                                setCD(item2.uid, str, move or 0)
                        end
                        setCD(item2.uid, "control", 0)
                        setCD(item2.uid, "blink", 0) --alterado v1.6
                        doSendMagicEffect(getThingPos(cid), 13)
                        doRemoveItem(12618, 1)
                        doCureBallStatus(item2.uid, "all")
                        cleanBuffs2(item2.uid)  --alterado v1.5
                return true
                end
        end

return true
end