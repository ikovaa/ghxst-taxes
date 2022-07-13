if Config.FrameWork == "QBCore" then
    QBCore = exports[Config.Export]:GetCoreObject()
end

if Config.FrameWork ~= "QBCore" then
    local function showAdvancedNotification(tax, vehiclecount)
        AddTextEntry('VehTaxesNotification', string.format(Translation[Config.Locale]['description'], tax, vehiclecount))
        BeginTextCommandThefeedPost('VehTaxesNotification')
        EndTextCommandThefeedPostMessagetext('CHAR_BANK_MAZE', 'CHAR_BANK_MAZE', false, 9, Translation[Config.Locale]['title'], '')
    end
else
    local function showAdvancedNotification(tax, vehiclecount)
        AddTextEntry('VehTaxesNotification', Lang:t('notify_Ingame.message', {value = tax, value2 = vehiclecount}))
        BeginTextCommandThefeedPost('VehTaxesNotification')
        EndTextCommandThefeedPostMessagetext('CHAR_BANK_MAZE', 'CHAR_BANK_MAZE', false, 9, Lang:t('notify_Ingame.title'), '')
    end
end


RegisterNetEvent('taxes:notify')
AddEventHandler('taxes:notify', function(tax, vehicleCount)
    showAdvancedNotification(tax, vehicleCount)
end)
