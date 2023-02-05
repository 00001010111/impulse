
local VENDOR = {}

VENDOR.UniqueID = "cpreq"
VENDOR.Name = "Requisition Supply Officer"
VENDOR.Desc = "Can supply Civil Protection officers with equipment."

VENDOR.Model = "models/dpfilms/metropolice/elite_police.mdl"
VENDOR.Skin = 0
VENDOR.Bodygroups = "01"
VENDOR.Gender = "cp"
VENDOR.Talk = true

VENDOR.Sell = {
	["wep_pistol"] = {
		Desc = "i3+ only",
		Restricted = true,
		Max = 1,
		Cooldown = 0,
		CanBuy = function(ply)
			return ply:GetTeamRank() >= RANK_I3
		end
	},
	["wep_smg"] = {
		Desc = "UNION-i1+/i2+ and JW only",
		Restricted = true,
		Max = 1,
		Cooldown = 0,
		CanBuy = function(ply)
			return ply:GetTeamClass() == CLASS_UNION and ply:GetTeamRank() >= RANK_I1 or GetCityCode() >= 3 and ply:GetTeamRank() >= RANK_I2
		end
	},
	["wep_medkit"] = {
		Desc = "HELIX only",
		Restricted = true,
		Max = 1,
		Cooldown = 0,
		CanBuy = function(ply)
			return ply:GetTeamClass() == CLASS_HELIX
		end
	},
	["wep_357"] = {
		Desc = "DcO+ only",
		Restricted = true,
		Max = 1,
		Cooldown = 0,
		CanBuy = function(ply)
			return ply:GetTeamRank() >= RANK_DCO
		end
	},
    ["att_riotshield"] = {
		Desc = "GRID-i2+ & CU only",
		Restricted = true,
		Max = 1,
		Cooldown = 0,
		CanBuy = function(ply)
			return GetCityCode() >= 2 and ply:GetTeamClass() == CLASS_GRID and ply:GetTeamRank() >= RANK_I2
		end
	},
    ["item_healthvial"] = {
		Desc = "i2+",
		Restricted = true,
		Max = 1,
		Cooldown = 300,
		CanBuy = function(ply)
			return ply:GetTeamRank() >= RANK_I2
		end
	},
    ["wep_teargas"] = {
        Desc = "GRID-i1+ & CU only",
		Restricted = true,
		Max = 1,
		Cooldown = 300,
		CanBuy = function(ply)
			return GetCityCode() >= 2 and ply:GetTeamClass() == CLASS_GRID and ply:GetTeamRank() >= RANK_I1
		end
	},
    ["item_ziptie"] = {
		Restricted = true,
		Max = 6,
		Cooldown = 0,
		CanBuy = function(ply)
		end
	},
	["item_camerarepairkit"] = {
		Desc = "GRID only",
		Restricted = true,
		Max = 2,
		Cooldown = 0,
		CanBuy = function(ply)
			return ply:GetTeamClass() == CLASS_GRID
		end
	},
	["cos_riothelmet"] = {
		Desc = "Civil Unrest only",
		Restricted = true,
		Max = 1,
		Cooldown = 0,
		CanBuy = function(ply)
			return GetCityCode() >= 2
		end
	},
}

VENDOR.Buy = {}

function VENDOR:CanUse(ply)
	return ply:Team() == TEAM_CP and ply:GetTeamClass() != nil
end

function VENDOR:OnItemPurchased(class, ply)
	if class == "wep_357" and ply:HasInventoryItem("wep_pistol") then
		ply:TakeInventoryItemClass("wep_pistol")
	end
	if class == "wep_pistol" and ply:HasInventoryItem("wep_357") then
		ply:TakeInventoryItemClass("wep_357")
	end
end

impulse.RegisterVendor(VENDOR)
