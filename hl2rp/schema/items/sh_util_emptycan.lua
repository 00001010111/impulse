local ITEM = {}

ITEM.UniqueID = "util_emptycan"
ITEM.Name = "Empty Water Can"
ITEM.Desc = "An Empty Water Can, can be use to get plastic."
ITEM.Model = Model("models/props_nunk/popcan01a.mdl")
ITEM.FOV = 8.4025787965616
ITEM.CamPos = Vector(100, -26.934097290039, 2.8653295040131)
ITEM.Weight = 2

ITEM.Droppable = true
ITEM.DropOnDeath = false

ITEM.Illegal = false
ITEM.CanStack = true

ITEM.CraftSound = "metal"
ITEM.CraftTime = 4.5

impulse.RegisterItem(ITEM)
