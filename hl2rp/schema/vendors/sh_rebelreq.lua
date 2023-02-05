

local VENDOR = {}

VENDOR.UniqueID = "rebelreq"
VENDOR.Name = "Rebel Requisitions"
VENDOR.Desc = "Buy starter items for rebelling here! Only players with less than 1500XP can use this."

VENDOR.Model = "models/player/impulse_zelpa/male_07.mdl"
VENDOR.Skin = 14
VENDOR.Bodygroups = "063210"
VENDOR.Gender = "male" -- male, female, cp
VENDOR.Talk = true

VENDOR.Sell = {
	["wep_axe"] = {
		Cost = 100
	},
	["wep_pistol"] = {
		Cost = 200,
		BuyMax = 1,
		TempCooldown = 1800	
	},
	["wep_improvsmg"] = {
		Cost = 500,
		BuyMax = 1,
		TempCooldown = 3600	
	}
}

function VENDOR:CanUse(ply)
	if ply:IsCP() then
		return false
	end
	if ply:GetXP() >= 1500 then
		return false
	end
end

impulse.RegisterVendor(VENDOR)