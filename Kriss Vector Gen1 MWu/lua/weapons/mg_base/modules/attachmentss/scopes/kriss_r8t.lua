ATTACHMENT.Base = "att_sight_1x_kv"
ATTACHMENT.Name = "Romeo8t"
ATTACHMENT.Model = Model("models/efttt/scopes/romeo8t/romeo8t.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_r8t.vmt")
ATTACHMENT.Reticle = {
    Material = Material("eft/reticles/rep.vmt"),
    Size = 400,
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
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(-0.01, 3, 0.05)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(0.007, -0.025, 0)
end