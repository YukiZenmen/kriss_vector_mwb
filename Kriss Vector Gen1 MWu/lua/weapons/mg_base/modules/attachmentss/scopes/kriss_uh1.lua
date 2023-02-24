ATTACHMENT.Base = "att_sight_1x_kv"
ATTACHMENT.Name = "UH1"
ATTACHMENT.Model = Model("models/efttt/scopes/uh1/attachment_s_uh1.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_uh1.vmt")
ATTACHMENT.Reticle = {
    Material = Material("eft/reticles/uh1_reticle.vmt"),
    Size = 300,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-0.025, -0.5, -0.0),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
    ["sight"] = 1,
    ["tag_sight_barrel"] = 2
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(-0.01, 3, -0.25)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(-0.04, -0.01, 0)
end