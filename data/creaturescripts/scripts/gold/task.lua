local tasksss = {
   [1] = {name = "Blastoise",  sto = 10212, count = 200, time_sto = 5457, time = 1*24*60*60, sto_count = 14129, money = 2, rewardid = 2145, rewardcount = 5, rewardid2 = 13341, rewardcount2 = 10, rewardexp = 1000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
   [2] = {name = "Charizard",  sto = 10213, count = 200, time_sto = 5458, time = 1*24*60*60, sto_count = 14130, money = 1, rewardid = 2145, rewardcount = 5, rewardid2 = 13341, rewardcount2 = 10, rewardexp = 2000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
   [3] = {name = "Venusaur",  sto = 10214, count = 200, time_sto = 5459, time = 1*24*60*60, sto_count = 14131, money = 1, rewardid = 2145, rewardcount = 5,  rewardid2 = 13341, rewardcount2 = 10, rewardexp = 2000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
   [4] = {name = "Zekrom",  sto = 10215, count = 150, time_sto = 5460, time = 1*24*60*60, sto_count = 14132, money = 1, rewardid = 2145, rewardcount = 10,  rewardid2 = 13341, rewardcount2 = 20, rewardexp = 2000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
   [5] = {name = "Reshiram",  sto = 10216, count = 150, time_sto = 5461, time = 1*24*60*60, sto_count = 14133, money = 1, rewardid = 2145, rewardcount = 10,  rewardid2 = 13341, rewardcount2 = 20, rewardexp = 2000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
   [6] = {name = "High Alakazam",  sto = 10217, count = 200, time_sto = 5462, time = 1*24*60*60, sto_count = 14134, money = 1, rewardid = 2145, rewardcount = 15, rewardid2 = 13341, rewardcount2 = 15, rewardexp = 2000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
   [7] = {name = "Fishing Articuno",  sto = 10218, count = 200, time_sto = 5463, time = 1*24*60*60, sto_count = 14135, money = 1, rewardid = 2145, rewardcount = 10, rewardid2 = 13341, rewardcount2 = 20, rewardexp = 2000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
   [8] = {name = "Thunder Zapdos",  sto = 10219, count = 100, time_sto = 5464, time = 1*24*60*60, sto_count = 14136, money = 1, rewardid = 2145, rewardcount = 25, rewardid2 = 13341, rewardcount2 = 20, rewardexp = 2000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
   [9] = {name = "Kyogre",  sto = 10220, count = 200, time_sto = 5465, time = 1*24*60*60, sto_count = 14137, money = 1, rewardid = 2145, rewardcount = 20, rewardid2 = 13341, rewardcount2 = 15, rewardexp = 2000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
   [10] = {name = "Magmar",  sto = 10221, count = 200, time_sto = 5466, time = 1*24*60*60, sto_count = 14138, money = 1, rewardid = 2145, rewardcount = 10, rewardid2 = 13341, rewardcount2 = 10, rewardexp = 2000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
   [11] = {name = "High Venusaur",  sto = 10222, count = 200, time_sto = 5467, time = 1*24*60*60, sto_count = 14139, money = 1, rewardid = 2145, rewardcount = 15, rewardid2 = 13341, rewardcount2 = 15, rewardexp = 2000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
   [12] = {name = "Regigigas",  sto = 10223, count = 100, time_sto = 5468, time = 1*24*60*60, sto_count = 14140, money = 1, rewardid = 2145, rewardcount = 25, rewardid2 = 13341, rewardcount2 = 20, rewardexp = 2000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
   [13] = {name = "Heatran",  sto = 10224, count = 200, time_sto = 5469, time = 1*24*60*60, sto_count = 14141, money = 1, rewardid = 2145, rewardcount = 15, rewardid2 = 13341, rewardcount2 = 15, rewardexp = 2000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
   [14] = {name = "Registeel",  sto = 10225, count = 200, time_sto = 5470, time = 1*24*60*60, sto_count = 14142, money = 1, rewardid = 2145, rewardcount = 15, rewardid2 = 13341, rewardcount2 = 15, rewardexp = 2000000,  text = "Parabéns você terminou essa quest, agora poderá fazer denovo daqui 24horas."},
 }

function onKill(cid, target)
        for _, t in ipairs(tasksss) do
            local total_count = t.count
            local m_sto = t.sto
            local count_sto = t.sto_count
            if getPlayerStorageValue(cid, m_sto) ~= -1 then
                if getCreatureName(target) == t.name then
                	if (total_count - getPlayerStorageValue(cid, count_sto)) == 1 then
                		setPlayerStorageValue(cid, count_sto, getPlayerStorageValue(cid, count_sto) + 1)
                    	doPlayerSendTextMessage(cid, 20, "You are killed ".. getPlayerStorageValue(cid, count_sto) .." " .. t.name .. " and finished the task!")
                    	return true
                    elseif (total_count - getPlayerStorageValue(cid, count_sto)) >= 1 then
                        setPlayerStorageValue(cid, count_sto, getPlayerStorageValue(cid, count_sto) + 1)
                        doPlayerSendTextMessage(cid, 20, "You are killed ".. getPlayerStorageValue(cid, count_sto) .." of ".. total_count .." " .. t.name .. " kills to finish the task.")
                        return true
                    end
                end
            end
        end
    return true
end