fx_version 'cerulean'
game 'gta5'

author 'Ghxst'
description 'QB-Vehicletaxes'
version 'v1'

shared_scripts {
    --'@qb-core/shared/locale.lua', --ONLY QBCore
    --'locales/en.lua', --ONLY QBCore
    'config.lua',
}

client_scripts {
    'client/*.lua'
}

server_scripts {
	--'@oxmysql/lib/MySQL.lua', -- ONLY QBCore and ESX-Legacy
    '@mysql-async/lib/MySQL.lua', -- ONLY ESX
    'server/*.lua'
}
