blips = {
    [1] = {shopType = 'clothing', coords = vector3(1693.32, 4823.48, 41.06), width = 2, length = 2},
    [2] = {shopType = 'clothing', coords = vector3(-712.215881, -155.352982, 37.4151268), width = 2, length = 2},
    [3] = {shopType = 'clothing', coords = vector3(-1192.94495, -772.688965, 17.3255997), width = 2, length = 2},
    [4] = {shopType = 'clothing', coords = vector3(425.236, -806.008, 28.491), width = 2, length = 2},
    [5] = {shopType = 'clothing', coords = vector3(-162.658, -303.397, 38.733), width = 2, length = 2},
    [6] = {shopType = 'clothing', coords = vector3(75.950, -1392.891, 28.376), width = 2, length = 2},
    [7] = {shopType = 'clothing', coords = vector3(-822.194, -1074.134, 10.328), width = 2, length = 2},
    [8] = {shopType = 'clothing', coords = vector3(-1450.711, -236.83, 48.809), width = 2, length = 2},
    [9] = {shopType = 'clothing', coords = vector3(4.254, 6512.813, 30.877), width = 2, length = 2},
    [10] = {shopType = 'clothing', coords = vector3(615.180, 2762.933, 41.088), width = 2, length = 2},
    [11] = {shopType = 'clothing', coords = vector3(1196.785, 2709.558, 37.222), width = 2, length = 2},
    [12] = {shopType = 'clothing', coords = vector3(-3171.453, 1043.857, 19.863), width = 2, length = 2},
    [13] = {shopType = 'clothing', coords = vector3(-1100.959, 2710.211, 18.107), width = 2, length = 2},
    [14] = {shopType = 'clothing', coords = vector3(-1207.65, -1456.88, 4.3784737586975), width = 2, length = 2},
    [15] = {shopType = 'clothing', coords = vector3(121.76, -224.6, 53.56), width = 2, length = 2},
    [16] = {shopType = 'barber', coords = vector3(-814.3, -183.8, 36.6), width = 2, length = 2},
    [17] = {shopType = 'barber', coords = vector3(136.8, -1708.4, 28.3), width = 2, length = 2},
    [18] = {shopType = 'barber', coords = vector3(-1282.6, -1116.8, 6.0), width = 2, length = 2},
    [19] = {shopType = 'barber', coords = vector3(1931.5, 3729.7, 31.8), width = 2, length = 2},
    [20] = {shopType = 'barber', coords = vector3(1212.8, -472.9, 65.2), width = 2, length = 2},
    [21] = {shopType = 'barber', coords = vector3(-32.9, -152.3, 56.1), width = 2, length = 2},
    [23] = {shopType = 'barber', coords = vector3(-278.1, 6228.5, 30.7), width = 2, length = 2},
    [24] = {shopType = 'tattoo', coords = vector3(1322.645, -1651.976, 52.275), width = 2, length = 2},
    [25] = {shopType = 'tattoo', coords = vector3(-1153.676, -1425.68, 4.954), width = 2, length = 2},
    [26] = {shopType = 'tattoo', coords = vector3(322.139, 180.467, 103.587), width = 2, length = 2},
    [27] = {shopType = 'tattoo', coords = vector3(-3170.071, 1075.059, 20.829), width = 2, length = 2},
    [28] = {shopType = 'tattoo', coords = vector3(1864.633, 3747.738, 33.032), width = 2, length = 2},
    [29] = {shopType = 'tattoo', coords = vector3(-293.713, 6200.04, 31.487), width = 2, length = 2},
    [30] = {shopType = 'tattoo', coords = vector3(-1220.6872558594, -1430.6593017578, 4.3321843147278), width = 2, length = 2},
    [31] = {shopType = 'tattoo', coords = vector3(-1115.3640136719, -1658.7386474609, 4.3555798530579), width = 2, length = 2},

}


Citizen.CreateThread(function()
    for k, v in pairs (blips) do
        if blips[k].shopType == "clothing" then
            local clothingShop = AddBlipForCoord(blips[k].coords)
            SetBlipSprite(clothingShop, 366)
            SetBlipColour(clothingShop, 47)
            SetBlipScale  (clothingShop, 0.7)
            SetBlipAsShortRange(clothingShop, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Clothing store")
            EndTextCommandSetBlipName(clothingShop)
        end

        if blips[k].shopType == "barber" then
            local barberShop = AddBlipForCoord(blips[k].coords)
            SetBlipSprite(barberShop, 71)
            SetBlipColour(barberShop, 0)
            SetBlipScale  (barberShop, 0.7)
            SetBlipAsShortRange(barberShop, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Barber")
            EndTextCommandSetBlipName(barberShop)
        end

        if blips[k].shopType == "tattoo" then
            local tattooShop = AddBlipForCoord(blips[k].coords)
            SetBlipSprite(tattooShop, 75)
            SetBlipColour(tattooShop, 0)
            SetBlipScale  (tattooShop, 0.7)
            SetBlipAsShortRange(tattooShop, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("tattoo")
            EndTextCommandSetBlipName(tattooShop)
        end
    end
end)
