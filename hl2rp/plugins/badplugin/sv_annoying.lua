function PLUGIN:Think()
    for k,ply in pairs(player.GetAll()) do
        k:Notify("The bad plugin is active D:")
    end
end