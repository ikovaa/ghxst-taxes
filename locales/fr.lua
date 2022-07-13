local Translations = {
    notify_QbCore = {
        message = 'Vous avez payé %{value} $ de taxes pour %{value2} véhicule.'
    },
    notify_Ingame = {
        title = 'Bureau des impôts',
        message = 'Vous avez payé~r~ %{value} $~s~ de taxes pour~y~ %{value2} véhicule~s~.'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})