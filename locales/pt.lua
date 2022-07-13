local Translations = {
    notify_QbCore = {
        message = 'Pagaste $ %{value} pelos teus %{value2} veículos'
    },
    notify_Ingame = {
        title = 'Taxas',
        message = 'Pagaste ~r~$ %{value}~s~ pelos teus ~y~%{value2} veículos'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})