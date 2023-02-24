ATTACHMENT.Base = "att_sight_1x_kv"
ATTACHMENT.Name = "Strikefire II"
ATTACHMENT.Model = Model("models/efttt/scopes/sf2/sf2.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_sf2.vmt")
ATTACHMENT.Reticle = {
    Material = Material("eft/reticles/x.vmt"),
    Size = 700,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-0.025, 0.25, 0.575),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
["sight"] = 2
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(-0.01, 3, -0.75)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(-0.075, -0.025, 0)
end