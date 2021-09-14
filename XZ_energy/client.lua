ESX              = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('energy')
AddEventHandler('energy', function()
    ESX.ShowNotification("Energy Drink Bevuto")
    SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
    Citizen.Wait(100000)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
end)
