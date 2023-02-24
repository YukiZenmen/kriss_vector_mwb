ATTACHMENT.Base = "att_sight_1x_kv"
ATTACHMENT.Name = "SIG Romeo 4T"
ATTACHMENT.Model = Model("models/more/scopes/r2t/r2t.mdl")
ATTACHMENT.Icon = Material("more_s_icons/r4t.vmt")
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/aimpoint_reticle.vmt"),
    Size = 180,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-0.025, 0, -0.05),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
["sight"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(-0.02, 3, -0.06)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(-0.02, -0.02, 0)
end