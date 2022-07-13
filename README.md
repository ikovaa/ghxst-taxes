# ghxst_taxes
Taxes for vehicles. Thanks to **Der-Elmoo** for the ESX Script

# Installation
1. Download the script
2. Drag and Drop it into your resources folder
4. You need to configurate it!! (follow the instructions for your system.)
5. Add **ensure ghxst-taxes** to your server.cfg

# Credits
Thanks to **Der-Elmoo** for the ESX Script. ([esx-vehicletaxes-fivem](https://github.com/Der-Elmoo/esx-vehicletaxes-fivem))

# Support
You can get support in our discord: ([Ghxst-Studios](https://discord.gg/knte6cydvM))

# ESX Legacy
1. Go to **config.lua**:
- set **Config.FrameWork** to **'ESX-Legacy'** (Line 3 in config.lua)
- set **Config.Notify** to **'Ingame'** (Line 5 in config.lua)
![image](https://user-images.githubusercontent.com/61068944/178674352-0ff54637-2598-4ee2-8093-ae2a1b6c1aa4.png)
3. Go to the **fxmanifest.lua**:
- remove_ the '--' before '@oxmysql/lib/MySQL.lua' (Line 18 in fxmanifest.lua)
- add the '--' before '@mysql-async/lib/MySQL.lua' (Line 19 in fxmanifest.lua)
![Screenshot 2022-07-13 091349](https://user-images.githubusercontent.com/61068944/178673460-5c98a0e4-892c-49b6-b3f2-1f7c85211bec.png)

# ESX
1. Go to **config.lua**:
- set **Config.FrameWork** to **'ESX'** (Line 3 in config.lua)
- set **Config.Notify** to **'Ingame'** (Line 5 in config.lua)
![image](https://user-images.githubusercontent.com/61068944/178674565-fc51ee05-a5c9-4715-a324-4697fa19c4b6.png)
3. Go to the **fxmanifest.lua**:
- remove_ the '--' before '@mysql-async/lib/MySQL.lua' (Line 18 in fxmanifest.lua)
- add the '--' before '@oxmysql/lib/MySQL.lua' (Line 19 in fxmanifest.lua)
![image](https://user-images.githubusercontent.com/61068944/178674715-bd0f0221-09de-427a-874d-0cae89515f93.png)

# QBCore
1. Go to **config.lua**:
- set **Config.FrameWork** to **'QBCore'** (Line 3 in config.lua)
- set **Config.SQLTableForVehicles** to **'player_vehicles'** (Line 4 in config.lua)
- set **Config.Notify** to **'QBCore'** (Line 5 in config.lua)
![image](https://user-images.githubusercontent.com/61068944/178675170-bee65ada-a0b2-474f-9f62-f50277a60f6c.png)
2. Go to the **fxmanifest.lua**:
- remove the '--' before '@qb-core/shared/locale.lua' (Line 8 in fxmanifest.lua)
- remove the '--' before 'locales/en.lua' (Line 9 in fxmanifest.lua)
- remove_ the '--' before '@oxmysql/lib/MySQL.lua' (Line 18 in fxmanifest.lua)
- add the '--' before '@mysql-async/lib/MySQL.lua' (Line 19 in fxmanifest.lua)
![image](https://user-images.githubusercontent.com/61068944/178675911-6c3212b1-dddf-49ac-aed0-35c48b4512c7.png)
