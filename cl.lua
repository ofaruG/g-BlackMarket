local QBCore = exports['qb-core']:GetCoreObject()
PlayerJob = {}

RegisterCommand('31la', function()
    TriggerEvent('silah:clmenu')
end)

RegisterNetEvent('silah:clmenu', function()
    local Menu = {
        {
            header = "Blackmarket",
            txt = "Dayıko",
            params = {
                event = "silah:clesyamenu",
            }
        }
    }
    Menu[#Menu+1] = {
        header = "⬅ Menüyü kapat.",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent('silah:clesyamenu', function()
    local harbig = {
        {
            header = "Black Marketi",
            isMenuHeader = true,
        }
    }
for k, v in pairs(Config.Itemlist) do
    harbig[#harbig+1] = {
        header = v.label,
        txt = "Eşya: " .. v.label .. " Tutar: " .. v.price .. "$".. " ".." " .." Adet:" .." " ..v.count,
        params = {
            isServer = true,
            event = "gunshop:itemal",
            args = {
                price = v.price,
                item = v.item,
                count = v.count,
                label = v.label
            }
        }
    }
end
harbig[#harbig+1] = {
    header = "Menuden Ayril"
    }
    exports['qb-menu']:openMenu(harbig)
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("blackmarket",vector3(1533.5, 787.71, 77.45), 3, 3, {
        name = "blackmarket",
        heading = 228.81,
        debugPoly = false,
        minZ = 75.56,
        maxZ = 80.87834,
    }, {
        options = {
            {
                type = "Client",
                event = "gdev",
                icon = "fas fa-gun",
                label = 'David Wlsn',
                job = 'all',

            },
        },
        distance = 3
    })
end)

RegisterNetEvent('gdev', function()
    TriggerServerEvent('atmsankiaq')
end)


local cord = Config.bm

Citizen.CreateThread(function()
    local sleep = 2000
    while true do
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local distance = GetDistanceBetweenCoords(playercoords, cord.x, cord.y, cord.z, true)
        if distance < 5 then
            sleep = 0
            DrawMarker(22,cord.x, cord.y, cord.z,0.0, 0.0, 0.0, 0.0, 0, 0.0, Config.markerboyutu, Config.markerboyutu, Config.markerboyutu, 255, 255, 0, 50, false, true, 2, nil, nil, false)
            if distance < 2 then
                DrawText3D(cord.x,cord.y,cord.z, '[E] BlackMarket')
                if IsControlJustReleased(0, 38) then
                    exports['ps-ui']:Circle(function(success)
                        if success then
                            TriggerServerEvent("atmsankiaq")
                        end
                    end)
                end
            else
                sleep = 1000
            end
        end
        Wait(sleep)
    end
end)



function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.30, 0.30)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 250
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 75)
end

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.30, 0.30)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 250
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 75)
end

Citizen.CreateThread(function()
	for k,v in pairs(Config.atepeds) do
		RequestModel(v.model)
		while not HasModelLoaded(v.model) do Citizen.Wait(1) end
		v.handle = CreatePed(4, v.model, v.coords.x, v.coords.y, v.coords.z-1.0, v.heading, false, false)
		GiveWeaponToPed(v.handle, v.weapon, 10, 1, 1)
		SetPedFleeAttributes(v.handle, 0, 0)
		SetPedDropsWeaponsWhenDead(v.handle, false)
		SetPedDiesWhenInjured(v.handle, false)
		SetEntityInvincible(v.handle , true)
		FreezeEntityPosition(v.handle, true)
		SetBlockingOfNonTemporaryEvents(v.handle, true)
		if v.anim.type == 1 then
			TaskStartScenarioInPlace(v.handle, v.anim.name, 0, true)
		elseif v.anim.type == 2 then
			RequestAnimDict(v.anim.dict)
			while not HasAnimDictLoaded(v.anim.dict) do Citizen.Wait(1) end
			TaskPlayAnim(v.handle, v.anim.dict, v.anim.name, 8.0, 1, -1, 49, 0, false, false, false)
		end
	end
end)



RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)


AddEventHandler("onResourceStart", function(JobInfo)
    PlayerJob = QBCore.Functions.GetPlayerData().job
end)


    
