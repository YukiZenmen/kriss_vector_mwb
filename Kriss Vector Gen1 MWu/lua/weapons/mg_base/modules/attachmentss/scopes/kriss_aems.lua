ATTACHMENT.Base = "att_sight_1x_kv"
ATTACHMENT.Name = "Holosun AEMS Red"
ATTACHMENT.Model = Model("models/efttt/scopes/aems/aems.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_aems.vmt")
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/eotech_reticle.vmt"),
    Size = 250,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-0.025, -1, -0.06),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
["sight"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0, 3, -0.075)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(-0.03, -0.01, 0)
end