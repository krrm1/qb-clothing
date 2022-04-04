clothingShops = {
	{1693.45667, 4823.17725, 42.1631294,600 },
	{-1177.865234375,-1780.5612792969,3.9084651470184,600},
	{198.4602355957,-1646.7690429688,29.803218841553,600},
	{298.19, -599.43, 43.29} ,
	{-712.215881,-155.352982, 37.4151268,600},
	{123.779823,-301.616455, 54.557827,600},
	{-1192.94495,-772.688965, 17.3255997,1500},
	{461.05, -996.78, 30.69 ,600},
	{ 425.236,-806.008,28.491 ,600},
	{ -162.658,-303.397,38.733 ,600},
	{ 75.950,-1392.891,28.376 ,600},
	{ -822.194,-1074.134,10.328 ,600},
	{ -1450.711,-236.83,48.809 ,600},
	{ 4.254,6512.813,30.877 ,600},
	{ 615.180,2762.933,41.088 ,600},
	{ 1196.785,2709.558,37.222,600},
	{ -3171.453,1043.857,19.863,600},
	{ -1100.959,2710.211,18.107,600},
	{ -1207.6564941406,-1456.8890380859,4.3784737586975,600},
	{ 121.76,-224.6,53.56,600},
	{ 1784.13, 2492.6, 50.43},

	{1861.58,3689.44,34.28}, -- sandy pd
	{-452.57,6014.21,31.72}, -- paleto pd

	{106.2,-1302.79,27.8,600}, -- VU Stripper room

	{100.19,3615.833,40.9145,600}, -- Lost MC Club house
	-- {471.5978, -995.4065, 24.920814}
}

Clothing = {
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
    [22] = {shopType = 'barber', coords = vector3(-278.1, 6228.5, 30.7), width = 2, length = 2}
}

Citizen.CreateThread(function()
    for k, v in pairs (Clothing) do
        if Clothing[k].shopType == "clothing" then
            local clothingShop = AddBlipForCoord(Clothing[k].coords)
            SetBlipSprite(clothingShop, 366)
            SetBlipColour(clothingShop, 47)
            SetBlipScale  (clothingShop, 0.7)
            SetBlipAsShortRange(clothingShop, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Clothing store")
            EndTextCommandSetBlipName(clothingShop)
        end
	end
end)