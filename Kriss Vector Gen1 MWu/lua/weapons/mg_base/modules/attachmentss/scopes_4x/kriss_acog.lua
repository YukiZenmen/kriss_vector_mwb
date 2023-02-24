ATTACHMENT.Base = "att_optic_4x_kv"
ATTACHMENT.Name = "ACOG"
ATTACHMENT.Model = Model("models/efttt/scopes/ta01nsn/ta01nsn.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_acog.vmt")
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-0.025, -1, -0.075),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
["sight"] = 1
}

ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_4x_west_lens.vmt"),
    HideModel = Model("models/viper/mw/attachments/attachment_vm_4x_west_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 700, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("eft/scopes/ta01nsn/reticle_acog_default2_5.vmt"),
    Size = 1600,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0.0,10,-0.28)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(-0.05, -0.01, 0)
end