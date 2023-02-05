
local VENDOR = {}

VENDOR.UniqueID = "dev"
VENDOR.Name = "Development Assistant"
VENDOR.Desc = ""

VENDOR.Model = "models/Humans/Group02/Female_04.mdl"
VENDOR.Skin = 0
VENDOR.Gender = "female"
VENDOR.Talk = true

VENDOR.Sell = {
	["util_spices"] = {
		Cost = 0,
	},
    ["util_yeast"] = {
    	Cost = 0,
    },
    ["food_watersparkling"] = {
    	Cost = 0,
    }
}


function VENDOR:CanUse(ply)
    return ply:IsSuperAdmin()
end

impulse.RegisterVendor(VENDOR)