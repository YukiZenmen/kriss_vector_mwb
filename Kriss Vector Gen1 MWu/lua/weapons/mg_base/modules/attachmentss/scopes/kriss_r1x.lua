ATTACHMENT.Base = "att_sight_1x_kv"
ATTACHMENT.Name = "Steiner R1X"
ATTACHMENT.Model = Model("models/efttt/scopes/r1x/r1x.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_r1x.vmt")
ATTACHMENT.Reticle = {
    Material = Material("eft/reticles/lco.vmt"),
    Size = 250,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-0.025, -1, -0.05),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
["sight"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(-0.025, 3, -0.055)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(-0.015, -0.04, 0)
end