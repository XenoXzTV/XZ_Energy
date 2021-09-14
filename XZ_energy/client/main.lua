local ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('energy')
AddEventHandler('energy', function()
    ESX.ShowNotification(_U('drunk'))
    SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
    Citizen.Wait(100000)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
end)
