local blips = {
  -- {title="Blip Name", colour=2, id=52, scale=0.8, x = 373.87, y = 325.89, z = 102.56},

	{title="Shop", colour=2, id=52, scale=0.8, x = 373.87, y = 325.89, z = 102.56},
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