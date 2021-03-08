----------------------------------------------------------------
-- Copyright © 2019 by Guy Shefer
-- Made By: Guy293
-- GitHub: https://github.com/Guy293
-- Fivem Forum: https://forum.fivem.net/u/guy293/
-- Tweaked by Campinchris (Added ESX only Diff animation for Police and Non Police)
----------------------------------------------------------------

Config 				  = {}
Config.Cooldowns = {
	["police"] = {
		light = 2000,
		heavy = 2500
	},
	["civilian"] = {
		light = 2000,
		heavy = 2500
	}
}

-- Add/remove weapon hashes here to be added for holster checks.
Config.Weapons = {
	-- Pistols
	[GetHashKey("WEAPON_PISTOL")] = "light",
	[GetHashKey("WEAPON_PISTOL_MK2")] = "light",
	[GetHashKey("WEAPON_COMBATPISTOL")] = "light",
	[GetHashKey("WEAPON_PISTOL50")] = "light",
	[GetHashKey("WEAPON_SNSPISTOL")] = "light",
	[GetHashKey("WEAPON_SNSPISTOL_MK2")] = "light",
	[GetHashKey("WEAPON_HEAVYPISTOL")] = "light",
	[GetHashKey("WEAPON_APPISTOL")] = "light",
	-- SMGs
	[GetHashKey("WEAPON_MICROSMG")] = "light",
	[GetHashKey("WEAPON_MINISMG")] = "light",
	[GetHashKey("WEAPON_SMG")] = "heavy",
	[GetHashKey("WEAPON_SMG_MK2")] = "heavy",
	[GetHashKey("WEAPON_ASSAULTSMG")] = "heavy",
	[GetHashKey("WEAPON_COMBATPDW")] = "heavy",
	-- ShotGuns
	[GetHashKey("WEAPON_PUMPSHOTGUN")] = "heavy",
	-- Assault Rifles
	[GetHashKey("WEAPON_ASSAULTRIFLE")] = "heavy",
	[GetHashKey("WEAPON_ASSAULTRIFLE_MK2")] = "heavy",
	[GetHashKey("WEAPON_CARBINERIFLE")] = "heavy",
	[GetHashKey("WEAPON_CARBINERIFLE_MK2")] = "heavy",
	[GetHashKey("WEAPON_ADVANCEDRIFLE")] = "heavy",
	[GetHashKey("WEAPON_SPECIALCARBINE")] = "heavy",
	[GetHashKey("WEAPON_SPECIALCARBINE_MK2")] = "heavy",
	[GetHashKey("WEAPON_BULLPUPRIFLE")] = "heavy",
	[GetHashKey("WEAPON_BULLPUPRIFLE_MK2")] = "heavy",
	[GetHashKey("WEAPON_COMPACTRIFLE")] = "light",
	[GetHashKey("WEAPON_MILITARYRIFLE")] = "heavy",
	-- LMGs
	[GetHashKey("WEAPON_GUSENBERG")] = "heavy",
	-- Sniper Rifles
	[GetHashKey("WEAPON_SNIPERRIFLE")] = "heavy",
	-- Heavy Weapons
	[GetHashKey("WEAPON_RPG")] = "heavy",
	[GetHashKey("WEAPON_HOMINGLAUNCHER")] = "heavy",
}