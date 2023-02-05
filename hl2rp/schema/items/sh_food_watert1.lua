local ITEM = {}

ITEM.UniqueID = "food_watert1"
ITEM.Name = "Water Can"
ITEM.Desc =  "Just water."
ITEM.Category = "Food"
ITEM.Model = Model("models/props_lunk/popcan01a.mdl")
ITEM.FOV = 16
ITEM.Weight = 0.2
ITEM.NoCenter = true

ITEM.Droppable = true
ITEM.DropOnDeath = false

ITEM.Illegal = false
ITEM.CanStack = false

ITEM.UseName = "Drink"
ITEM.UseWorkBarTime = 2
ITEM.UseWorkBarName = "Drinking..."
ITEM.UseWorkBarSound = "impulse/drink.wav"

ITEM.Food = 5

function ITEM:OnUse(ply)
    ply:FeedHunger(self.Food)
    ply:GiveInventoryItem("food_watert1")
    return true -- returning true removes the item after use
end

impulse.RegisterItem(ITEM)