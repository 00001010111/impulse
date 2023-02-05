local MIX = {}

MIX.Class = "pipe"

MIX.Level = 1
MIX.Bench = "general"
--MIX.XPMultiplier = 0.5 this will half the XP for crafting it, used to nerf the XP from simple items to stop them being spammed

MIX.Output = "util_pipe"
MIX.Input = {
	["food_apple"] = {take = 2}
}

impulse.RegisterMixture(MIX)