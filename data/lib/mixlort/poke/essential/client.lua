string.explode = function (str, sep, limit)
    if(type(sep) ~= 'string' or isInArray({tostring(str):len(), sep:len()}, 0)) then
        return {}
    end

    local i, pos, tmp, t = 0, 1, "", {}
    for s, e in function() return string.find(str, sep, pos) end do
        tmp = str:sub(pos, s - 1):trim()
        if tmp ~= "" then               --alterado v1.8
           table.insert(t, tmp)
        end
        pos = e + 1

        i = i + 1
        if(limit ~= nil and i == limit) then
            break
        end
    end

    tmp = str:sub(pos):trim()
    if tmp ~= "" then              --alterado v1.8
       table.insert(t, tmp)
    end
    return t
end

function convertTime(a)
    
    if(type(tonumber(a)) == "number" and a > 0) then
        if (a <= 3599) then
            local minute = math.floor(a/60)
            local second = a - (60 * minute)
            
            if(second == 0) then
                return ((minute)..((minute > 1) and " minutos" or " minuto"))
            else
                return ((minute ~= 0) and ((minute>1) and minute.." minutos e " or minute.." minuto e ").. ((second>1) and second.." segundos" or second.." segundo") or ((second>1) and second.." segundos" or second.. " segundo"))
            end
        else
            local hour = math.floor(a/3600)
            local minute = math.floor((a - (hour * 3600))/60)
            local second = (a - (3600 * hour) - (minute * 60))
            
            if (minute == 0 and second > 0) then
                return (hour..((hour > 1) and " horas e " or " hora e "))..(second..((second > 1) and " segundos" or " segundo"))
            elseif (second == 0 and minute > 0) then
                return (hour..((hour > 1) and " horas e " or " hora e "))..(minute..((minute > 1) and " minutos" or " minuto"))
            elseif (second == 0 and minute == 0) then
                return (hour..((hour > 1) and " horas" or " hora"))
            end
            return (hour..((hour > 1) and " horas, " or " hora, "))..(minute..((minute > 1) and " minutos e " or " minuto e "))..(second..((second > 1) and " segundos" or " segundo"))
        end
    end
end

function doCorrectString(str)
local name = str:explode(" ")  --alterado v1.9
local final = {}
for _, s in ipairs(name) do
    table.insert(final, s:sub(1, 1):upper()..s:sub(2, #s):lower())
end
return table.concat(final, (name[2] and " " or ""))
end  
