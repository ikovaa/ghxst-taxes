local Translations = {
    notify_QbCore = {
        message = 'Du hast $ %{value} für deine %{value2} Fahrzeuge bezahlt'
    },
    notify_Ingame = {
        title = 'Steuern',
        message = 'Du hast ~r~$ %{value}~s~ für deine ~y~%{value2} Fahrzeuge bezahlt'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})