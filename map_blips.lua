local blips = {

	{title="Würfelpark", colour=1, id=489, scale=1.2, x = 187.41, y = -950.1, z = 30.69},
	{title="Vanilla Unicorn", colour=48, id=121, scale=1.0, x = 128.76, y = -1298.54, z = 30.69},

}
      
Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, info.scale)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
	    BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)