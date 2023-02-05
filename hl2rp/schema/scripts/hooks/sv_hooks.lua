function SCHEMA:PlayerShouldGetHungry(ply)
    -- cops will not get hungry
    return ply:Team() != TEAM_COP
end