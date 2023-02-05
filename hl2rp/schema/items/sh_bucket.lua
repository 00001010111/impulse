local ITEM = {}

ITEM.UniqueID = "item_bucket"
ITEM.Name = "Bucket"
ITEM.Desc =  "A bucket..."
ITEM.Model = Model("models/props_junk/MetalBucket01a.mdl")
ITEM.FOV = 38.644699140401
ITEM.CamPos = Vector(0, 25, 18.91117477417)
ITEM.NoCenter = true
ITEM.Weight = 1

ITEM.Droppable = true
ITEM.DropOnDeath = true

ITEM.Illegal = false
ITEM.CanStack = false

ITEM.UseName = "Stare"
ITEM.UseWorkBarTime = 2
ITEM.UseWorkBarName = "Staring..."

function ITEM:OnUse(ply)
    ply:Notify("You stared into the bucket...")
    return false
end

impulse.RegisterItem(ITEM)