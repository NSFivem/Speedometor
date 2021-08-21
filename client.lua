function text(content)
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(1.4,1.5)
    SetTextEntry("STRING")
    AddTextComponentString(content .. "  MPH")
    --SetTextComponantString(content .. "MPH")
    DrawText(0.44,0.91)
end

Citizen.CreateThread(function()

    while true do
        Citizen.Wait(2)
        local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*3.6
        if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            --print('Player is in a vehicle!') --Just to make sure the script works for testing reasons
            text(math.floor(speed))
        end
    end
end)
