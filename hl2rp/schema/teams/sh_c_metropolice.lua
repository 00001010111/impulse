TEAM_METROPOLICE = impulse.Teams.Define({
	name = "Combine",
	color = Color(212, 35, 35),
	description = [[Catch robbers]],
	loadout = {"impulse_hands", "weapon_physgun", "gmod_tool"},
	salary = 300,
	model = "models/dpfilms/metropolice/hl2concept.mdl",
	handModel = "models/weapons/c_arms_combine.mdl",
    percentLimit = true,
	limit = 0.2,
	xp = 50,
	cp = true,
    blockNameChange = true,
    doorGroup = {1},

    quiz = {
        {
            question = "Вы уверены?",
            answers = {
                {"Да", true},
                {"Нет", false}
            }
        },
        {
            question = "Что вы будете делать в случае того что увидете вооруженного человека?",
            answers = {
                {"Убью его", false},
                {"Дам ему уйтю", false},
                {"Доложу в рацию о нем и попробую обезвредить", true}
            }
        }
    },

    classes = {
        {
            name = "RCT",
            description = "Быть постовым негретенком",
            model = "models/dpfilms/metropolice/hl2beta_police.mdl",
            skin = 0,
            xp = 50,
            armour = 100,
            itemsAdd = {
                {class = "wep_pistol", amount = 1}
            }
        },
        {
            name = "05",
            description = "Shoot n stuff",
            model = "models/dpfilms/metropolice/hl2concept.mdl",
            skin = 0,
            xp = 100,
            armour = 500,
            percentLimit = true,
            limit = 0.1
        },
        {
            name = "SEC",
            description = "Shoot n stuff",
            model = "models/dpfilms/metropolice/phoenix_police.mdl",
            skin = 0,
            xp = 100,
            armour = 250,
            percentLimit = true,
            limit = 0.1,
            noMenu = true -- hide from menu, player can only become this if your code sets them to it
        }
    },

    ranks = {
        {
            name = "Recruit",
            description = "?",
            xp = 50,
            onBecome = function(ply, rank)
                -- you can run code here if you want, works with classes too
                print(ply)
            end
        },
        {
            name = "Officer",
            description = "?",
            xp = 80,
            limit = 3
        }
    }
})

CLASS_RCT = 1
CLASS_05 = 2
CLASS_SEC = 3

RANK_RECRUIT = 1
RANK_OFFICER = 2