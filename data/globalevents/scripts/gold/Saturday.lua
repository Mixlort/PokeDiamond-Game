local config =
{
        day = "Saturday",
        pos = {x=1187, y=1018, z=7},
        topos = {x=1188, y=1958, z =7},
        time = 10, -- tempo que o teleport ira sumir em minutos
        msg_open = "[HALLOWEEN QUEST] BOA SORTE MAUHAUAHAUA! Ira se fechar em 10 minutos.", 
        msg_close = "O Portal se fechou."
}


local function DelTp()
        local t = getTileItemById(config.pos, 1387)
        if t then
                doRemoveItem(t.uid, 1)
                doSendMagicEffect(config.pos, CONST_ME_POFF)
        end
end


function onTime()
       
        if (os.date("%A") == config.day) then
                doCreateTeleport(1387, config.topos, config.pos)
                doBroadcastMessage(config.msg_open)
                addEvent(DelTp, config.time*60*1000)
                addEvent(doBroadcastMessage, config.time*60*1000, config.msg_close)
        end


        return true
end