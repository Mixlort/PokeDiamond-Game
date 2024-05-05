balls = {
    normal = {emptyId = 2394, usedOn = 11826, usedOff = 11828, effectFail = 23, effectSucceed = 25, missile = 48, effectRelease = 189, chanceMultiplier = 1.0},
    great = {emptyId = 2391, usedOn = 11832, usedOff = 11834, effectFail = 197, effectSucceed = 199, missile = 49, effectRelease = 190, chanceMultiplier = 1.2},
    super = {emptyId = 2393, usedOn = 11835, usedOff = 11837, effectFail = 201, effectSucceed = 203, missile = 47, effectRelease = 191, chanceMultiplier = 1.3},
    ultra = {emptyId = 2392, usedOn = 11829, usedOff = 11831, effectFail = 199, effectSucceed = 201, missile = 50, effectRelease = 192, chanceMultiplier = 1.4},
}

function getBallKey(uid)
    for key, value in pairs(balls) do
        if uid == value.emptyId or uid == value.usedOn or uid == value.usedOff then
            return key
        end
    end
    return "normal"
end
