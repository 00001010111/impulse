local ITEM = {}

ITEM.UniqueID = "food_bread"
ITEM.Name = "Universal Union Bread"
ITEM.Desc =  "Bread from the Universal Union."
ITEM.Category = "Food"
ITEM.Model = Model("models/bioshockinfinite/dread_loaf.mdl")
ITEM.FOV = 16
ITEM.Weight = 0.2
ITEM.NoCenter = true

ITEM.Droppable = true
ITEM.DropOnDeath = false

ITEM.Illegal = false
ITEM.CanStack = false

ITEM.UseName = "Eat"
ITEM.UseWorkBarTime = 2
ITEM.UseWorkBarName = "Eating..."
ITEM.UseWorkBarSound = "impulse/eat.wav"

ITEM.Food = 20

function ITEM:OnUse(ply)
    ply:FeedHunger(self.Food)
    return true -- returning true removes the item after use
end

impulse.RegisterItem(ITEM)