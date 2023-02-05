local ITEM = {}

ITEM.UniqueID = "util_woodplank"
ITEM.Name = "Wood Plank"
ITEM.Desc = "Wood plank not the hightest quality."
ITEM.Model = Model("models/Items/item_item_crate_chunk02.mdl")
ITEM.FOV = 18.485673352436
ITEM.CamPos = Vector(-20.057306289673, 25, 9)
ITEM.NoCenter = true
ITEM.Weight = 0.2

ITEM.Droppable = true
ITEM.DropOnDeath = false

ITEM.Illegal = false
ITEM.CanStack = true


ITEM.CraftSound = "wood"
ITEM.CraftTime = 1


impulse.RegisterItem(ITEM)