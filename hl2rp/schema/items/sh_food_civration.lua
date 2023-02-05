local ITEM = {}

ITEM.UniqueID = "food_civration"
ITEM.Name = "Citizen Ration"
ITEM.Desc =  "Ration for citizen."
ITEM.Category = "Food"
ITEM.Model = Model("models/weapons/w_packatc.mdl")
ITEM.FOV = 16
ITEM.Weight = 0.2
ITEM.NoCenter = true

ITEM.Droppable = true
ITEM.DropOnDeath = false

ITEM.Illegal = false
ITEM.CanStack = false

ITEM.UseName = "Open"
ITEM.UseWorkBarTime = 1
ITEM.UseWorkBarName = "Opening..."
ITEM.UseWorkBarSound = "impulse/unequip.wav"

ITEM.Food = 0

function ITEM:OnUse(ply)
    ply:GiveInventoryItem("food_watert1")
    return true -- returning true removes the item after use
end

impulse.RegisterItem(ITEM)