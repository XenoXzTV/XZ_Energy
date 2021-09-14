ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterNetEvent('energy')
AddEventHandler('energy', function()
  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
    ESX.ShowNotification("Energy Drink Bevuto")
    SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
    Citizen.Wait(100000)
-- dopo il citizen wait con il tempo si stoppa il tutto
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
end)
