-- Framework related
impulse.Config.SchemaName = "Half-Lifed 2 RolePlay"
impulse.Config.SchemaVersion = 3

impulse.Config.SchemaCredits = [[Developers
<font=Impulse-Elements23>Developer1NameHere</font>
<font=Impulse-Elements23>Developer2NameHere</font>
<font=Impulse-Elements23>Developer3NameHere</font>
<font=Impulse-Elements23>Developer4NameHere</font>
<font=Impulse-Elements23>Developer5NameHere</font>]]

impulse.Config.MainColour = Color(81, 189, 143)
impulse.Config.InteractColour = Color(251, 197, 49)

impulse.Config.UserSlots = 999 -- how many slots to give to users, you may want to leave this at 999 as its kind of broken
impulse.Config.IntroMusic = "music/hl1_song20.mp3" -- song to play when character is made for first time players

impulse.Config.SignalsUpdateTime = 2

impulse.Config.WalkSpeed = 200
impulse.Config.JogSpeed = 400
impulse.Config.SlowWalkRatio = 0.6

impulse.Config.TalkDistance = 300
impulse.Config.WhisperDistance = 90
impulse.Config.YellDistance = 550
impulse.Config.VoiceDistance = 550

impulse.Config.OOCLimit = 16
impulse.Config.OOCLimitVIP = 28

impulse.Config.PropLimit = 90
impulse.Config.PropLimitDonator = 170

impulse.Config.BuyableSpawnLimit = 6
impulse.Config.DroppedItemsLimit = 20
impulse.Config.DroppedMoneyLimit = 10
impulse.Config.ChairsLimit = 3

impulse.Config.StartingMoney = 100
impulse.Config.StartingBankMoney = 500
impulse.Config.CurrencyPrefix = "T"
impulse.Config.CurrencyName = "tokens"
impulse.Config.ATMModel = "models/props_combine/combine_intwallunit.mdl"

impulse.Config.XPTime = 100
impulse.Config.XPGet = 5
impulse.Config.XPGetVIP = 10

impulse.Config.AFKTime = 360 -- 6 mins
impulse.Config.AFKKickRatio = 0.95

impulse.Config.TeamChangeTime = 120
impulse.Config.TeamChangeTimeDonator = 15

impulse.Config.ClassChangeTime = 60
impulse.Config.QuizWaitTime = 20 -- in mins

impulse.Config.RespawnTime = 50
impulse.Config.RespawnTimeDonator = 20

impulse.Config.BodyDeSpawnTime = 360 -- 6 mins

impulse.Config.BrokenLegsHealTime = 300 -- 5 mins

impulse.Config.PropPrice = 5
impulse.Config.PropPriceDonator = 2

impulse.Config.RPNameChangePrice = 60

impulse.Config.CosmeticGenderPrice = 600
impulse.Config.CosmeticModelSkinPrice = 120

impulse.Config.MaxLetters = 3

impulse.Config.HungerTime = 60
impulse.Config.HungerHealTime = 25

impulse.Config.InventoryMaxWeight = 1 -- in kg
impulse.Config.InventoryStorageMaxWeight = 80
impulse.Config.InventoryStorageMaxWeightVIP = 160
impulse.Config.InventoryItemDeSpawnTime = 300
impulse.Config.InventoryStorageModel = "models/props/cs_militia/footlocker01_closed.mdl"
impulse.Config.InventoryStoragePublicModel = "models/props_c17/lockers001a.mdl"

impulse.Config.GroupMakeCost = 10000
impulse.Config.GroupXPRequirement = 1500
impulse.Config.GroupMaxMembers = 20
impulse.Config.GroupMaxMembersVIP = 100
impulse.Config.GroupMaxRanks = 13
impulse.Config.GroupMaxRanksVIP = 20

impulse.Config.DiscordLeadModRoleID = ""
impulse.Config.AutoModCooldown = 130
impulse.Config.AutoModMaxRisk = 15

impulse.Config.CommunityURL = ""
impulse.Config.PanelURL = ""
impulse.Config.DonateURL = ""
impulse.Config.DiscordURL = ""
impulse.Config.SupportURL = "" -- this can just be the forum url
impulse.Config.DiscordRelayURL = "" -- not required
impulse.Config.RulesURL = ""
impulse.Config.TutorialURL = ""

-- Optional, if you don't have it delete the line below. Used for newsfeed. Requires: https://wordpress.org/plugins/better-rest-api-featured-images/
 impulse.Config.WordPressURL = ""
 impulse.Config.DefaultWordPressImage = ""

impulse.Config.DisabledPlugins = {
	["badplugin"] = true -- the bad plugin is disabled, remove this line to enable it
}

impulse.Config.DoorPrice = 10
impulse.Config.DoorGroups = {
	[1] = "Cops",
	[2] = "Robbers",
	[3] = "Mayor"
}

impulse.Config.RankColours = {
	["superadmin"] = Color(201, 15, 12),
	["communitymanager"] = Color(84, 204, 5),
	["leadadmin"] = Color(128, 0, 128),
	["admin"] = Color(34, 88, 216),
	["moderator"] = Color(34, 88, 216),
	["donator"] = Color(212, 185, 9)
}

impulse.Config.SaveableAmmo = { -- these ammo types will be saved on player disconnect
	["Pistol"] = true,
	["SMG1"] = true,
	["357"] = true,
	["Buckshot"] = true,
	["AR2"] = true,
	["Rifle"] = true
}

impulse.Config.Achievements = {
	["ach_plugincommand"] = {
		Name = "Plugin Command",
		Desc = "You entered the test plugin command",
		Icon = Material("impulse/icons/warning-36-128.png")
	},
	["ach_kill"] = {
		Name = "Kill Someone",
		Desc = "uhhhh you killed someone i guess",
		Icon = Material("impulse/icons/check-mark-128.png")
	}
}

impulse.Config.ModQuickReplies = {
	"I am a quick report reply! Add more in sh_config.lua in your schema."
}

impulse.Config.AutoModDict = {
	{
		Terms = {"HI DALE", "HELLO DALE", "DALE", "WHAT IS DALE", "WHO IS DALE"},
		Specific = true,
		IgnorePunc = true,
		RequestClose = true,
		Reply = "Hi! I'm Dale, the >>automated<< chipmunk moderator! I'll try to answer your questions before you speak to a staff member to solve your issue!"
	},
	{
		Terms = {"HELP", "JUST HELP", "HELP ME", "ADMIN HELP", "ADMIN", "COME HERE", "COME", "NEED STAFF", "NEED ADMIN", "ADMIN COME HERE", "ADMIN TO ME", "I NEED A ADMIN", "I NEED ADMIN", "TO ME", "MINGE", "HEY"},
		Specific = true,
		IgnorePunc = true,
		Reply = "Hi! I've noticed your report doesn't contain much detail about the situation. We'd really appricate it if you could provide some more information for us by updating the report! Thanks!"
	}
}

impulse.Config.DefaultTeam = TEAM_CITIZEN

impulse.Config.DefaultMaleModels = {
	Model("models/player/impulse_zelpa/male_01.mdl"),
	Model("models/player/impulse_zelpa/male_02.mdl"),
	Model("models/player/impulse_zelpa/male_03.mdl"),
	Model("models/player/impulse_zelpa/male_04.mdl"),
	Model("models/player/impulse_zelpa/male_05.mdl"),
	Model("models/player/impulse_zelpa/male_06.mdl"),
	Model("models/player/impulse_zelpa/male_07.mdl"),
	Model("models/player/impulse_zelpa/male_08.mdl"),
	Model("models/player/impulse_zelpa/male_09.mdl"),
	Model("models/player/impulse_zelpa/male_10.mdl"),
	Model("models/player/impulse_zelpa/male_11.mdl")
}

impulse.Config.DefaultFemaleModels = {
	Model("models/player/impulse_zelpa/female_01.mdl"),
	Model("models/player/impulse_zelpa/female_02.mdl"),
	Model("models/player/impulse_zelpa/female_03.mdl"),
	Model("models/player/impulse_zelpa/female_04.mdl"),
	Model("models/player/impulse_zelpa/female_06.mdl"),
	Model("models/player/impulse_zelpa/female_07.mdl")
}

impulse.Config.DefaultSkinBlacklist = {
	["models/player/impulse_zelpa/male_02.mdl"] = {14, 22, 6} -- bloody eye skins banned
}


