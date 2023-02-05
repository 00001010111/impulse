local ITEM {}

ITEM.UniqueID = "util_renforced_plate"
ITEM.Name = "Renforced Metal Plate"
ITEM.Desc = "A renforced metal plate"
ITEM.Model = Model()
ITEM.FOV = 18.485673352436
ITEM.CamPos = Vector(-20.057306289673, 25, 9)
ITEM.NoCenter = true
ITEM.Weight = 0.2

ITEM.Droppable = true
ITEM.DropOnDeath = false

ITEM.Illegal = true
ITEM.CanStack = true

ITEM.CraftSound = "metal"
ITEM.CraftTime = 12

impulse.RegisterItem(ITEM)