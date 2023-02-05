
local VENDOR = {}

VENDOR.UniqueID = "cook"
VENDOR.Name = "Commercial Worker Requistions"
VENDOR.Desc = "Purchase cooking ingredients here!"

VENDOR.Model = "models/player/impulse_zelpa/female_04.mdl"
VENDOR.Skin = 3
VENDOR.Bodygroups = "031"
VENDOR.Gender = "female     " -- male, female, cp
VENDOR.Talk = true

VENDOR.Sell = {
	["food_apple"] = {
		Cost = 10
	},
    ["util_cookingoil"] = {
		Cost = 5
	},
	["food_banana"] = {
		Cost = 12
    },
    ["food_cheese"] = {
        Cost = 30
    },
    ["food_orange"] = {
        Cost = 10
    },
    ["food_pineapple"] = {
        Cost = 30
    },
    ["food_wine"] = {
        Cost = 100
    },
    ["util_meat"] = {
        Cost = 50
    },
    ["util_yeast"] = {
        Cost = 12
    },
    ["util_milk"] = {
        Cost = 10
    },
    ["food_cig"] = {
        Cost = 15
    },
    ["util_glue"] = {
        Cost = 25
    }
}
VENDOR.Buy = {
	["food_apple"] = {
		Cost = 8
	},
    ["util_cookingoil"] = {
		Cost = 3
	},
	["food_banana"] = {
		Cost = 10
    },
    ["food_cheese"] = {
        Cost = 20
    },
    ["util_cookingoil"] = {
		Cost = 3
	},
    ["food_orange"] = {
        Cost = 8
    },
    ["food_pineapple"] = {
        Cost = 25
    },
    ["util_yeast"] = {
        Cost = 10
    },
    ["util_milk"] = {
        Cost = 7
    },
    ["food_cig"] = {
        Cost = 13
    },
    ["util_glue"] = {
        Cost = 18
    }      
}


function VENDOR:CanUse(ply)
    return ply:Team() == TEAM_CWU and ply:GetTeamClass() == CLASS_COMMERCE

end

impulse.RegisterVendor(VENDOR)
