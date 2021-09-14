local ESX = exports['es_extended']:getSharedObject()

ESX.RegisterUsableItem('energy', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('energy', 1)

	TriggerClientEvent('energy', source)
end)