function PLUGIN:PlayerDeath(victim, wep, attacker)
	if IsValid(attacker) and attacker:IsPlayer() then
		attacker:AddSkillXP("murder", 50) -- add 50 xp to the murder skill
	end
end