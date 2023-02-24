ATTACHMENT.Base = "att_sight_1x_kv"
ATTACHMENT.Name = "Aimpoint CompM4"
ATTACHMENT.Model = Model("models/efttt/scopes/am4/am4.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_am4.vmt")
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_reflex_default2.vmt"),
    Size = 440,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-0.025, 1, -0.0),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
["sight"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(-0.01, 3, -0.17)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(-0.02, -0.025, 0)
end