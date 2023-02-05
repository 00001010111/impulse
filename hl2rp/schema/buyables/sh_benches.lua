impulse.Business.Define("General Workbench", {
	bench = "general",
	model = "models/props_combine/breendesk.mdl",
    refund = true,
	price = 70,
    removeOnTeamSwitch = true,
    customCheck = function(ply)
        -- you can write any code here to check if they should be allowed to spawn it, return false for no, true for yes

    	return true
    end
})