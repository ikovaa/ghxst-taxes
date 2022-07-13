local Translations = {
    notify_QbCore = {
        message = 'you paid $ %{value} for your %{value2} vehicles'
    },
    notify_Ingame = {
        title = 'Taxes',
        message = 'You paid ~r~$ %{value}~s~ for your ~y~%{value2} vehicles'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})