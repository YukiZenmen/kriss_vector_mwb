ATTACHMENT.Base = "att_sight_1x_kv"
ATTACHMENT.Name = "DI Optical FC1"
ATTACHMENT.Model = Model("models/efttt/scopes/fc1/fc1.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_fc1.vmt")
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/aimpoint_reticle.vmt"),
    Size = 200,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-0.025, -0.5, -0.05),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
["sight"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0, 1, -0.05)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(-0.04, -0.015, 0)
end