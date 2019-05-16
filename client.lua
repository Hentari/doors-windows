local oknaotwarte = true
RegisterNetEvent("otwieranieokien")
AddEventHandler('otwieranieokien', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
		if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
		
			if ( oknaotwarte ) then
				RollDownWindow(playerCar, 0)
				RollDownWindow(playerCar, 1)
				oknaotwarte = false
			else
				RollUpWindow(playerCar, 0)
				RollUpWindow(playerCar, 1)
				oknaotwarte = true
			end
		end
	end
end )

Citizen.CreateThread(function()
	while true do
        if IsControlJustReleased(0, 173) then
            TriggerEvent('otwieranieokien')
        end
        Citizen.Wait(0)
    end
end)

RegisterCommand("windows", function(source, args, raw)
    TriggerEvent("otwieranieokien")
end, false)

---Drzwi1---
local drzwi1otwarte = true
RegisterNetEvent("otwieraniedrzwi1")
AddEventHandler('otwieraniedrzwi1', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
		if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
		
			if ( drzwi1otwarte ) then
				SetVehicleDoorOpen(playerCar,0)
				drzwi1otwarte = false
			else
				SetVehicleDoorShut(playerCar,0)
				drzwi1otwarte = true
			end
		end
	end
end )

RegisterCommand("door1", function(source, args, raw)
    TriggerEvent("otwieraniedrzwi1")
end, false)

---Drzwi2---
local drzwi2otwarte = true
RegisterNetEvent("otwieraniedrzwi2")
AddEventHandler('otwieraniedrzwi2', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
		if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
		
			if ( drzwi2otwarte ) then
				SetVehicleDoorOpen(playerCar,1)
				drzwi2otwarte = false
			else
				SetVehicleDoorShut(playerCar,1)
				drzwi2otwarte = true
			end
		end
	end
end )

RegisterCommand("door2", function(source, args, raw)
    TriggerEvent("otwieraniedrzwi2")
end, false)

---Drzwi3---
local drzwi3otwarte = true
RegisterNetEvent("otwieraniedrzwi3")
AddEventHandler('otwieraniedrzwi3', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
		if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
		
			if ( drzwi3otwarte ) then
				SetVehicleDoorOpen(playerCar,2)
				drzwi3otwarte = false
			else
				SetVehicleDoorShut(playerCar,2)
				drzwi3otwarte = true
			end
		end
	end
end )

RegisterCommand("door3", function(source, args, raw)
    TriggerEvent("otwieraniedrzwi3")
end, false)

---Drzwi4---
local drzwi4otwarte = true
RegisterNetEvent("otwieraniedrzwi4")
AddEventHandler('otwieraniedrzwi4', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
		if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
		
			if ( drzwi4otwarte ) then
				SetVehicleDoorOpen(playerCar,3)
				drzwi4otwarte = false
			else
				SetVehicleDoorShut(playerCar,3)
				drzwi4otwarte = true
			end
		end
	end
end )

RegisterCommand("door4", function(source, args, raw)
    TriggerEvent("otwieraniedrzwi4")
end, false)

---Maska---
local maskaotwarta = true
RegisterNetEvent("otwieraniemaski")
AddEventHandler('otwieraniemaski', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
		if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
		
			if ( maskaotwarta ) then
				SetVehicleDoorOpen(playerCar,4)
				maskaotwarta = false
			else
				SetVehicleDoorShut(playerCar,4)
				maskaotwarta = true
			end
		end
	end
end )

RegisterCommand("hood", function(source, args, raw)
    TriggerEvent("otwieraniemaski")
end, false)

---Bagażnik---
local bagaznikotwarty = true
RegisterNetEvent("otwieraniebagaznika")
AddEventHandler('otwieraniebagaznika', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local playerCar = GetVehiclePedIsIn(playerPed, false)
		if ( GetPedInVehicleSeat( playerCar, -1 ) == playerPed ) then 
            SetEntityAsMissionEntity( playerCar, true, true )
		
			if ( bagaznikotwarty ) then
				SetVehicleDoorOpen(playerCar,5)
				bagaznikotwarty = false
			else
				SetVehicleDoorShut(playerCar,5)
				bagaznikotwarty = true
			end
		end
	end
end )

RegisterCommand("trunk", function(source, args, raw)
    TriggerEvent("otwieraniebagaznika")
end, false)