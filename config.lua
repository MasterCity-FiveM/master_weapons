Config 				  = {}

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
    [GetHashKey("WEAPON_SMG")] = "w_sb_smg", -- w_sb_smg
    [GetHashKey("WEAPON_SMG_MK2")] = "w_sb_smgmk2", -- w_sb_smgmk2
    [GetHashKey("WEAPON_ASSAULTSMG")] = "w_sb_assaultsmg", -- w_sb_assaultsmg
    [GetHashKey("WEAPON_COMBATPDW")] = "w_sb_pdw", -- w_sb_pdw
    -- ShotGuns
    [GetHashKey("WEAPON_PUMPSHOTGUN")] = "w_sg_pumpshotgun", -- w_sg_pumpshotgun
    -- Assault Rifles
    [GetHashKey("WEAPON_ASSAULTRIFLE")] = "w_ar_assaultrifle", -- w_ar_assaultrifle
    [GetHashKey("WEAPON_ASSAULTRIFLE_MK2")] = "w_ar_assaultriflemk2", -- w_ar_assaultriflemk2
    [GetHashKey("WEAPON_CARBINERIFLE")] = "w_ar_carbinerifle", -- w_ar_carbinerifle
    [GetHashKey("WEAPON_CARBINERIFLE_MK2")] = "w_ar_assaultriflemk2", -- w_ar_assaultriflemk2
    [GetHashKey("WEAPON_ADVANCEDRIFLE")] = "w_ar_advancedrifle", -- w_ar_advancedrifle
    [GetHashKey("WEAPON_SPECIALCARBINE")] = "w_ar_specialcarbine", -- w_ar_specialcarbine
    [GetHashKey("WEAPON_SPECIALCARBINE_MK2")] = "w_ar_specialcarbinemk2", -- w_ar_specialcarbinemk2
    [GetHashKey("WEAPON_BULLPUPRIFLE")] = "w_ar_bullpuprifle", -- w_ar_bullpuprifle
    [GetHashKey("WEAPON_BULLPUPRIFLE_MK2")] = "w_ar_bullpupriflemk2", -- w_ar_bullpupriflemk2
    [GetHashKey("WEAPON_COMPACTRIFLE")] = "light",
    -- LMGs
    [GetHashKey("WEAPON_GUSENBERG")] = "w_sb_gusenberg", -- w_sb_gusenberg
    -- Sniper Rifles
    [GetHashKey("WEAPON_SNIPERRIFLE")] = "w_sr_sniperrifle", -- w_sr_sniperrifle
    -- Heavy Weapons
    [GetHashKey("WEAPON_RPG")] = "w_lr_rpg", -- w_lr_rpg & w_lr_rpg_rocket
    [GetHashKey("WEAPON_HOMINGLAUNCHER")] = "w_lr_homing", -- w_lr_homing & w_lr_homing_rocket
}

Config.ColorsWeapons = {
    [GetHashKey("WEAPON_ASSAULTRIFLE") .. "_4"] = "w_ar_assaultrifle_luxe",
}

Config.AtWeap = {
	back_bone = 24816,
    x = 0.075,
    y = -0.15,
    z = -0.02,
    x_rotation = 0.0,
    y_rotation = 165.0,
    z_rotation = 0.0
}