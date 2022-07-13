if Config.FrameWork == "QBCore" then
    QBCore = exports[Config.Export]:GetCoreObject()

    Citizen.CreateThread(function()
        while true do
            for k, playerid in pairs(QBCore.Functions.GetQBPlayers()) do
                local Player = playerid
                local citizenid = Player.PlayerData.citizenid

                if Player ~= nil then
                    local vehicleCount = MySQL.Sync.fetchScalar('SELECT COUNT(plate) FROM '..Config.SQLTableForVehicles..' WHERE citizenid = ?', { citizenid })
                    if vehicleCount >= 1 then
                        local tax = tonumber(vehicleCount) * Config.Tax
                        Player.Functions.RemoveMoney('bank', tax)
                        if Config.Notify == 'QBCore' then
                            TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, Lang:t('notify_QbCore.message', {value = tax, value2 = vehicleCount}), "success", 10000) -- tax, vehicleCount
                        elseif Config.Notify == 'Ingame' then
                            TriggerClientEvent('taxes:notify', Player.PlayerData.source, tax, vehicleCount)
                        end
                    end
                end
            end
            Citizen.Wait(Config.Time * Config.TimeMultiplier)
        end
    end)
    elseif Config.FrameWork == "ESX-Legacy" then
        local ESX = nil
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
        Citizen.CreateThread(function()
            while true do
                for k, playerid in pairs(GetPlayers()) do
                    local xPlayer = ESX.GetPlayerFromId(playerid)

                    if xPlayer ~= nil then

                        local vehicleCount = MySQL.Sync.fetchScalar("SELECT COUNT(plate) FROM "..Config.SQLTableForVehicles.." WHERE owner = @owner",
                        {
                            ['@owner'] = xPlayer.identifier,
                        }
                        )
                        if vehicleCount >= 1 then
                            local tax = tonumber(vehicleCount) * Config.Tax
                            xPlayer.removeAccountMoney('bank', tax)
                            TriggerClientEvent('taxes:notify', xPlayer.source, tax, vehicleCount)
                        end
                    end
                end
                Citizen.Wait(Config.Time * Config.TimeMultiplier)
            end
        end)
    else
        local ESX = exports['es_extended']:getSharedObject()
        Citizen.CreateThread(function()
            while true do
                for k, xPlayer in pairs(ESX.GetPlayers()) do

                    if xPlayer ~= nil then
                        local vehicleCount = MySQL.scalar.await('SELECT COUNT(plate) FROM '..Config.SQLTableForVehicles..' WHERE owner = ?', {xPlayer.identifier})
                        if vehicleCount >= 1 then
                            local tax = tonumber(vehicleCount) * Config.Tax
                            xPlayer.removeAccountMoney('bank', tax)
                            TriggerClientEvent('taxes:notify', xPlayer.source, tax, vehicleCount)
                        end
                    end
                end
                Citizen.Wait(Config.Time * Config.TimeMultiplier)
            end
        end)
    end