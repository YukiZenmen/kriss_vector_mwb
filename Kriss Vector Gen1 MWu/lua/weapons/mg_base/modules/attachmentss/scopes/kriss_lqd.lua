ATTACHMENT.Base = "att_sight_1x_kv"
ATTACHMENT.Name = "M-SPEC"
ATTACHMENT.Model = Model("models/more/scopes/lqd/lqd.mdl")
ATTACHMENT.Icon = Material("more_s_icons/lqd.vmt")
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/eotech_reticle.vmt"),
    Size = 300,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-0.025, 1, -0.08),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
["sight"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0, 3, -0.175)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(-0.0, -0.015, 0)
end