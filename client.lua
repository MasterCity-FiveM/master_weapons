--------------------------------------
--- DO NOT EDIT THIS --
local ESX      	 = nil
local PlayerData, attached_weapons = {}, nil
local lastWeapon
local blocked, BlockWheel, hasBag, holstered = false, false, false, true
local lastBackWeapon = 1
------------------------

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
	loadBag()
	Citizen.Wait(20000)
	checkHolsters()
	Citizen.Wait(40000)
	loadBag()
end)

local hasBagDefault = false


--[[RegisterNetEvent('master_weapon:toggleBag')
AddEventHandler('master_weapon:toggleBag', function(id)
	local playerPed = PlayerPedId()
	RequestAnimDict("anim@heists@ornate_bank@grab_cash")

	while not HasAnimDictLoaded("anim@heists@ornate_bank@grab_cash") do
		Citizen.Wait(100)
	end
	
	loadAnimDict("anim@heists@ornate_bank@grab_cash")
	TaskPlayAnim(playerPed, "anim@heists@ornate_bank@grab_cash", "exit", 8.0, 2.0, -1, 48, 10, 0, 0, 0) -- Change 50 to 30 if you want to stand still when removing weapon
	Citizen.Wait(2500)
	ClearPedTasks(playerPed)
	
	loadBag()
end)]]--


RegisterNetEvent('esx_skin:saved')
AddEventHandler('esx_skin:saved', function(clothesSkin)
	if clothesSkin ~= nil and clothesSkin.bags_1 ~= nil then
		if clothesSkin.bags_1 ~= 85 and clothesSkin.bags_1 ~= 86 and clothesSkin.bags_1 ~= 82 and clothesSkin.bags_1 ~= 81 and clothesSkin.bags_1 ~= 45 and clothesSkin.bags_1 ~= 41 and clothesSkin.bags_1 ~= 40 then
			hasBag = false
			hasBagDefault = false
		else
			hasBag = true
			hasBagDefault = true
		end
	end
end)

RegisterNetEvent('skinchanger:loadSkin')
AddEventHandler('skinchanger:loadSkin', function(clothesSkin)
	if clothesSkin ~= nil and clothesSkin.bags_1 ~= nil then
		if clothesSkin.bags_1 ~= 85 and clothesSkin.bags_1 ~= 86 and clothesSkin.bags_1 ~= 82 and clothesSkin.bags_1 ~= 81 and clothesSkin.bags_1 ~= 45 and clothesSkin.bags_1 ~= 41 and clothesSkin.bags_1 ~= 40 then
			hasBag = false
			hasBagDefault = false
		else
			hasBag = true
			hasBagDefault = true
		end
	end
end)

RegisterNetEvent('master_weapons:setBag')
AddEventHandler('master_weapons:setBag', function(status)
	hasBag = status
end)

RegisterNetEvent('master_weapons:resetBag')
AddEventHandler('master_weapons:resetBag', function()
	hasBag = hasBagDefault
end)

RegisterNetEvent('skinchanger:loadClothes')
AddEventHandler('skinchanger:loadClothes', function(playerSkin, clothesSkin)
	if clothesSkin ~= nil and clothesSkin.bags_1 ~= nil then
		if clothesSkin.bags_1 ~= 85 and clothesSkin.bags_1 ~= 86 and clothesSkin.bags_1 ~= 82 and clothesSkin.bags_1 ~= 81 and clothesSkin.bags_1 ~= 45 and clothesSkin.bags_1 ~= 41 and clothesSkin.bags_1 ~= 40 then
			hasBag = false
			hasBagDefault = false
		else
			hasBag = true
			hasBagDefault = true
		end
	end
end)

function loadBag()
	TriggerEvent('skinchanger:getSkin', function(clothesSkin)
		if clothesSkin ~= nil and clothesSkin.bags_1 ~= nil then
			if clothesSkin.bags_1 ~= 85 and clothesSkin.bags_1 ~= 86 and clothesSkin.bags_1 ~= 82 and clothesSkin.bags_1 ~= 81 and clothesSkin.bags_1 ~= 45 and clothesSkin.bags_1 ~= 41 and clothesSkin.bags_1 ~= 40 then
				hasBag = false
				hasBagDefault = false
			else
				hasBag = true
				hasBagDefault = true
			end
		end
	end)
end

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

RegisterNetEvent('holstersweapon:ForceStop')
AddEventHandler('holstersweapon:ForceStop', function()
	blocked = false
	BlockWheel = false
end)

function checkHolsters()
	while not PlayerData.job do
		Wait(50)
	end

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(100)
			local ped = PlayerPedId()
			if not hasBag and not IsPedInAnyVehicle(ped, false) then
				for wep_hash, wep_name in pairs(Config.Weapons) do
					if wep_name ~= 'light' and HasPedGotWeapon(ped, wep_hash, false) then
						if lastBackWeapon == wep_hash or GetSelectedPedWeapon(ped) == wep_hash then
							break
						end
						
						if attached_weapons ~= nil then
							DeleteObject(attached_weapons.handle)
							attached_weapons = nil
							lastBackWeapon = 1
						end
						AttachWeapon(wep_name, wep_hash, Config.AtWeap.back_bone, Config.AtWeap.x, Config.AtWeap.y, Config.AtWeap.z, Config.AtWeap.x_rotation, Config.AtWeap.y_rotation, Config.AtWeap.z_rotation, isMeleeWeapon(wep_name))
						break
					end
				end
			end
			
			if attached_weapons ~= nil and (hasBag or GetSelectedPedWeapon(ped) == attached_weapons.hash or not HasPedGotWeapon(ped, attached_weapons.hash, false)) then
				DeleteObject(attached_weapons.handle)
				attached_weapons = nil
				lastBackWeapon = 1
			end
			
			if not IsPedInAnyVehicle(ped, false) then
				if GetVehiclePedIsTryingToEnter(ped) == 0 and not IsPedInParachuteFreeFall(ped) then
					local weapon = CheckWeapon(ped)
					if weapon then
						lastWeapon = weapon
						if holstered then
							blocked   = true
							disableActions()
							if weapon == "light" then
								RequestAnimDict("reaction@intimidation@1h")

								while not HasAnimDictLoaded("reaction@intimidation@1h") do
									Citizen.Wait(100)
								end
								
								loadAnimDict("reaction@intimidation@1h")
								TaskPlayAnim(ped, "reaction@intimidation@1h", "intro", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )
								Citizen.Wait(2000)
								ClearPedTasks(ped)
								holstered = false
							else
								RequestAnimDict("anim@heists@ornate_bank@grab_cash")

								while not HasAnimDictLoaded("anim@heists@ornate_bank@grab_cash") do
									Citizen.Wait(100)
								end
								
								loadAnimDict("anim@heists@ornate_bank@grab_cash")
								TaskPlayAnim(ped, "anim@heists@ornate_bank@grab_cash", "intro", 8.0, 2.0, -1, 48, 10, 0, 0, 0) -- Change 50 to 30 if you want to stand still when removing weapon
								Citizen.Wait(2500)
								ClearPedTasks(ped)
								holstered = false
							end
								
							holstered = false
						else
							blocked = false
						end
					else
						if not holstered then
							if lastWeapon ~= "light" then
								RequestAnimDict("anim@heists@ornate_bank@grab_cash")

								while not HasAnimDictLoaded("anim@heists@ornate_bank@grab_cash") do
									Citizen.Wait(100)
								end
								
								BlockWheel = true
								disableActions()
								loadAnimDict("anim@heists@ornate_bank@grab_cash")
								TaskPlayAnim(ped, "anim@heists@ornate_bank@grab_cash", "exit", 8.0, 2.0, -1, 48, 10, 0, 0, 0) -- Change 50 to 30 if you want to stand still when removing weapon
								Citizen.Wait(2500)
								ClearPedTasks(ped)
								holstered = true
								BlockWheel = false
							else
								RequestAnimDict("reaction@intimidation@1h")

								while not HasAnimDictLoaded("reaction@intimidation@1h") do
									Citizen.Wait(100)
								end
								
								BlockWheel = true
								disableActions()
								loadAnimDict("reaction@intimidation@1h")
								TaskPlayAnim(ped, "reaction@intimidation@1h", "outro", 8.0, 3.0, -1, 50, 0, 0, 0.125, 0 ) -- Change 50 to 30 if you want to stand still when holstering weapon
								Citizen.Wait(2000)
								ClearPedTasks(ped)
								holstered = true
								BlockWheel = false
							end
						end
					end
				else
					SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
				end
			else
				holstered = true
				if attached_weapons ~= nil then
					DeleteObject(attached_weapons.handle)
				end
				attached_weapons = nil
				lastBackWeapon = 1
			end
		end
	end)
end

function disableActions()
	Citizen.CreateThread(function()
		while blocked or BlockWheel do
			Citizen.Wait(5)
			DisableControlAction(1, 25, true)
			DisableControlAction(1, 140, true)
			DisableControlAction(1, 141, true)
			DisableControlAction(1, 142, true)
			DisableControlAction(1, 23, true)
			DisableControlAction(1, 37, true) -- Disables INPUT_SELECT_WEAPON (TAB)
			DisablePlayerFiring(ped, true) -- Disable weapon firing
		end
	end)
end

--[[
Citizen.CreateThread(function()
	while true do
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin['bags_1'] ~= nil and (skin['bags_1'] >= 40 and skin['bags_1'] <= 47) then
				hasBag = true
			else
				hasBag = false
			end
		end)
			
		Citizen.Wait(10000)
	end
end)
]]--

function CheckWeapon(ped)
	if IsEntityDead(ped) then
		blocked = false
		return false
	else
		local weapon = GetSelectedPedWeapon(ped)
		return Config.Weapons[weapon]
	end
end

function loadAnimDict(dict)
	while ( not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(0)
	end
end

function AttachWeapon(attachModel, modelHash, boneNumber, x, y, z, xR, yR, zR, isMelee)
	local ped = PlayerPedId()
	local bone = GetPedBoneIndex(GetPlayerPed(-1), boneNumber)
	local WeaponColor = GetPedWeaponTintIndex(ped, modelHash)
	if WeaponColor ~= nil and WeaponColor ~= 0 and Config.ColorsWeapons[modelHash .. "_" .. WeaponColor] ~= nil then
		attachModel = Config.ColorsWeapons[modelHash .. "_" .. WeaponColor]
	end

	RequestModel(attachModel)
	while not HasModelLoaded(attachModel) do
		Wait(100)
	end
	
  attached_weapons = {
    hash = modelHash,
    handle = CreateObject(GetHashKey(attachModel), 1.0, 1.0, 1.0, true, true, false)
  }

  lastBackWeapon = modelHash
  if isMelee then x = 0.11 y = -0.14 z = 0.0 xR = -75.0 yR = 185.0 zR = 92.0 end -- reposition for melee items
  if attachModel == "prop_ld_jerrycan_01" then x = x + 0.3 end

  AttachEntityToEntity(attached_weapons.handle, GetPlayerPed(-1), bone, x, y, z, xR, yR, zR, 1, 1, 0, 0, 2, 1)
end

function isMeleeWeapon(wep_name)
    if wep_name == "prop_golf_iron_01" then
        return true
    elseif wep_name == "w_me_bat" then
        return true
    elseif wep_name == "prop_ld_jerrycan_01" then
      return true
    else
        return false
    end
end