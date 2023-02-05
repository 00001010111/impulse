function PLUGIN:PlayerSay(ply, text)
	//ply:Notify("You just said: "..text)
end

function PLUGIN:PlayerDeath(victim, wep, attacker)
	if IsValid(attacker) and attacker:IsPlayer() then
		attacker:AchievementGive("ach_kill")
	end
end