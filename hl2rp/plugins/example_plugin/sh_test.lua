local testCommand = {
    description = "Runs the test command",
    onRun = function(ply)
        ply:AchievementGive("ach_plugincommand")
    end
}

impulse.RegisterChatCommand("/testcommand", testCommand)

local giveItemCommand = {
    description = "Gives the player the item specified",
    requiredArg = true,
    adminOnly = true,
    onRun = function(ply, arg)
        local class = arg[1]

        -- this doesnt check if the item is valid, so it'll give errors 
        ply:Notify("Trying to give you "..class.." (we perform no checks so invalid item class will give an error)")
        ply:GiveInventoryItem(class)
    end
}

impulse.RegisterChatCommand("/testgiveitem", giveItemCommand)