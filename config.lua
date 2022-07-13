Config = {}

Config.FrameWork = 'ESX' -- ESX-Legacy, ESX or QBCore
Config.SQLTableForVehicles = 'owned_vehicles' -- replace with the name of your player vehicles sql table
Config.Notify = 'Ingame' -- available options: QBCore & Ingame
Config.Export = 'qb-core' -- set to your framework resource name. (Only qb-core)

--[[

Remember to edit the fxmanifest.lua if you change the framework | Only if you change from ESX to QBCore

]]

Config.Time = 10 --time in Seconds | Example: 10 = every 10 Minutes
Config.TimeMultiplier = 60000
Config.Tax = 25 --tax for ONE car. Will be multiplied by the count of cars a user has

-- ONLY ESX
Config.Locale = "en"
Translation = {
    ['de'] = {
        ['title'] = 'Finanzamt',
        ['description'] = 'Du hast~r~ %s $~s~ für~y~ %s Fahrzeuge~s~ gezahlt.'
    },
    ['en'] = {
        ['title'] = 'Tax Office',
        ['description'] = 'You paid~r~ %s $~s~ for~y~ %s vehicles~s~.'
    },
    ['fr'] = {
        ['title'] = 'Bureau des impôts',
        ['description'] = 'Vous avez payé~r~ %s $~s~ de taxes pour~y~ %s véhicule~s~.'
    }
}