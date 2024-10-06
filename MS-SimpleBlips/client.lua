local blipLocations = {
    {title="Test Blip", color=2, id=280, coords = vector3(-1345.0, -244.0, 47.0)}, -- Change coords as needed
}

Citizen.CreateThread(function()
    for _, blip in ipairs(blipLocations) do
        local blipHandle = AddBlipForCoord(blip.coords)
        SetBlipSprite(blipHandle, blip.id)
        SetBlipDisplay(blipHandle, 4)
        SetBlipScale(blipHandle, 0.8)
        SetBlipColour(blipHandle, blip.color)
        SetBlipAsShortRange(blipHandle, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blip.title)
        EndTextCommandSetBlipName(blipHandle)
    end
end)
