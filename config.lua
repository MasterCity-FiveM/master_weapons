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
    -- Pistols
    [GetHashKey("WEAPON_PISTOL") .. "_4"] = "w_pi_pistol_luxe",
    [GetHashKey("WEAPON_PISTOL_MK2") .. "_4"] = "w_pi_pistol_luxe", -- peyda nkrdm
    [GetHashKey("WEAPON_COMBATPISTOL") .. "_4"] = "w_pi_combatpistol_luxe",
    [GetHashKey("WEAPON_PISTOL50") .. "_4"] = "w_pi_pistol50_luxe",
    [GetHashKey("WEAPON_SNSPISTOL") .. "_4"] = "w_pi_sns_pistol_luxe",
    [GetHashKey("WEAPON_SNSPISTOL_MK2") .. "_4"] = "w_pi_sns_pistol_luxe", -- peyda nkrdm
    [GetHashKey("WEAPON_HEAVYPISTOL") .. "_4"] = "w_pi_heavypistol_luxe",
    [GetHashKey("WEAPON_APPISTOL") .. "_4"] = "w_pi_appistol_luxe",
    -- SMGs
    [GetHashKey("WEAPON_MICROSMG") .. "_4"] = "w_sb_microsmg_luxe",
    [GetHashKey("WEAPON_MINISMG") .. "_4"] = "w_sb_microsmg_luxe", -- peyda nkrdm
    [GetHashKey("WEAPON_SMG") .. "_4"] = "w_sb_smg_luxe",
    [GetHashKey("WEAPON_SMG_MK2") .. "_4"] = "w_sb_smg_luxe", -- peyda nkrdm
    [GetHashKey("WEAPON_ASSAULTSMG") .. "_4"] = "w_sb_assaultsmg_luxe",
    --[GetHashKey("WEAPON_COMBATPDW") .. "_4"] = "w_ar_assaultrifle_luxe", -- peyda nkrdm
    -- Shotguns
    [GetHashKey("WEAPON_PUMPSHOTGUN") .. "_4"] = "w_sg_pumpshotgun_luxe",
    -- Assault Rifles
    [GetHashKey("WEAPON_ASSAULTRIFLE") .. "_4"] = "w_ar_assaultrifle_luxe",
    [GetHashKey("WEAPON_ASSAULTRIFLE_MK2") .. "_4"] = "w_ar_assaultrifle_luxe", -- peyda nkrdm
    [GetHashKey("WEAPON_CARBINERIFLE") .. "_4"] = "w_ar_carbinerifle_luxe",
    [GetHashKey("WEAPON_CARBINERIFLE_MK2") .. "_4"] = "w_ar_carbinerifle_luxe", -- peyda nkrdm
    [GetHashKey("WEAPON_ADVANCEDRIFLE") .. "_4"] = "w_ar_advancedrifle_luxe",
    [GetHashKey("WEAPON_SPECIALCARBINE") .. "_4"] = "w_ar_specialcarbine_luxe",
    [GetHashKey("WEAPON_SPECIALCARBINE_MK2") .. "_4"] = "w_ar_specialcarbine_luxe", -- peyda nkrdm
    [GetHashKey("WEAPON_BULLPUPRIFLE") .. "_4"] = "w_ar_bullpuprifle_luxe",
    [GetHashKey("WEAPON_BULLPUPRIFLE_MK2") .. "_4"] = "w_ar_bullpuprifle_luxe", -- peyda nkrdm
    --[GetHashKey("WEAPON_COMPACTRIFLE") .. "_4"] = "w_ar_assaultrifle_luxe", -- peyda nkrdm
    -- LMGs
    --[GetHashKey("WEAPON_GUSENBERG") .. "_4"] = "w_ar_assaultrifle_luxe", -- peyda nkrdm
    -- Snipers
    [GetHashKey("WEAPON_SNIPERRIFLE") .. "_4"] = "w_sr_sniperrifle_luxe",
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