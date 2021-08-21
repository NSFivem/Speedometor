function text(content)
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(1.9,1.9)
    SetTextEntry("STRING")
    SetTextComponantString(content .. "MPH")
    DrawText(0.9,0.7)
end

Citizen.CreateThread(function()

    while true do
        Citizen.Wait(2)
        local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*3.6
        if (IsPedInAnyVehicle(GetPlayerPedId(-1), false)) then
            print('Player is in a vehicle!') --Just to make sure the script works for testing reasons
            text(math.floor(speed))
        end
    end
end)