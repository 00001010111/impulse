--[[
Server Name: vanilla: Half-Life 2 Roleplay | Semi-Serious RP
Server IP:   185.38.148.133:27015
File Path:   gamemodes/vanilla-hl2rp/schema/vendors/sh_otareq.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

local VENDOR = {}

VENDOR.UniqueID = "otareq"
VENDOR.Name = "Overwatch Requisition Supply Officer"
VENDOR.Desc = "Supplies Overwatch Soldiers with equipment."

VENDOR.Model = "models/Combine_Super_Soldier.mdl"
VENDOR.Sequence = "idle_unarmed"
VENDOR.Gender = "cp"
VENDOR.Talk = true

VENDOR.Sell = {
	["item_ziptie"] = {
		Restricted = true,
		Max = 2
	},
	["item_binoculars"] = {
		Restricted = true,
		Max = 1
	},
	["item_healthvial"] = {
		Restricted = true,
		Max = 1,
		Cooldown = 600
	},
	["item_suitbattery"] = {
		Restricted = true,
		Max = 1,
		Cooldown = 600
	},
    ["wep_smg2"] = {
		Desc = "RANGER-EOW+ only",
		Restricted = true,
		Max = 1,
		CanBuy = function(ply)
			return ply:GetTeamClass() == CLASS_RANGER and ply:GetTeamRank() >= RANK_EOW
		end
	},
	 ["wep_grenade"] = {
		Desc = "MACE-LDR+ only",
		Restricted = true,
		Max = 1,
		Cooldown = 300,
		CanBuy = function(ply)
			return ply:GetTeamClass() == CLASS_MACE and ply:GetTeamRank() == RANK_LDR
		end
	},
    ["wep_smg"] = {
		Restricted = true,
		Max = 1,
        CanBuy = function(ply)
			return ply:GetTeamClass() == CLASS_ECHO
		end
	},
	["wep_shotgun"] = {
		Desc = "MACE only",
		Restricted = true,
		Max = 1,
		CanBuy = function(ply)
			return ply:GetTeamClass() == CLASS_MACE
		end
	},
    ["wep_ar2"] = {
    	Desc = "SENTINEL/RANGER/EOW+ only",
		Restricted = true,
		Max = 1,
		CanBuy = function(ply)
			return ply:GetTeamClass() == CLASS_SENTINEL or ply:GetTeamClass() == CLASS_ECHO and ply:GetTeamRank() >= RANK_EOW or ply:GetTeamClass() == CLASS_RANGER
		end
	},
    ["wep_osr"] = {
    		Desc = "RANGER-EOW+ only",
		Restricted = true,
		Max = 1,
		CanBuy = function(ply)
			return ply:GetTeamClass() == CLASS_RANGER and ply:GetTeamRank() >= RANK_EOW
		end
	},
    ["att_evrscope"] = {
		Desc = "RANGER only",
		Restricted = true,
		Max = 1,
		CanBuy = function(ply)
			return ply:GetTeamClass() == CLASS_RANGER and ply:GetTeamRank() >= RANK_OWS
		end
	},
	["att_lrmod"] = {
		Desc = "RANGER-EOW+ only",
		Restricted = true,
		Max = 1,
		CanBuy = function(ply)
			return ply:GetTeamClass() == CLASS_RANGER and ply:GetTeamRank() >= RANK_EOW
		end
	},
	["item_breachingcharge"] = {
		Restricted = true,
		Max = 3
	}
}

VENDOR.Buy = {}

function VENDOR:CanUse(ply)
	return ply:Team() == TEAM_OTA and ply:GetTeamClass() != nil
end

function VENDOR:OnItemPurchased(class, ply)
    if class == "wep_smg2" and ply:HasInventoryItem("wep_ar2") then
		ply:TakeInventoryItemClass("wep_ar2")
	end
    if class == "wep_ar2" and ply:HasInventoryItem("att_lrmod") then
		ply:TakeInventoryItemClass("att_lrmod")
	end
	if class == "wep_osr" and ply:HasInventoryItem("att_evrscope") then
		ply:TakeInventoryItemClass("att_evrscope")
	end
    if class == "wep_smg" and ply:HasInventoryItem("wep_ar2") then
		ply:TakeInventoryItemClass("wep_ar2")
	end
    if class == "wep_ar2" and ply:HasInventoryItem("wep_smg") then
		ply:TakeInventoryItemClass("wep_smg")
	end
    if class == "wep_ar2" and ply:HasInventoryItem("wep_osr") then
		ply:TakeInventoryItemClass("wep_osr")
        	ply:TakeInventoryItemClass("wep_smg2")
		ply:TakeInventoryItemClass("att_lrmod")
	end
	if class == "wep_ar2" and ply:HasInventoryItem("wep_smg2") then
		ply:TakeInventoryItemClass("wep_smg2")
	end
    if class == "wep_osr" and ply:HasInventoryItem("wep_ar2") then
		ply:TakeInventoryItemClass("wep_ar2")
		ply:TakeInventoryItemClass("att_evrscope")
	end
end

impulse.RegisterVendor(VENDOR)
