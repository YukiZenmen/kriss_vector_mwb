ATTACHMENT.Base = "att_optic_4x_kv"
ATTACHMENT.Name = "RAZOR® HD GEN III"
ATTACHMENT.Model = Model("models/efttt/scopes/razor/razor.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_sumiao.vmt")
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-0.025, -2, -0.075),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
    ["sight"] = 2,
    ["tag_sight_barrel"] = 2
}
ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_scope_vz_lens.vmt"),
    HideModel = Model("models/efttt/scopes/razor/rg3_lh.mdl"),
    LensBodygroup = "lens",
    FOV = 3, 
    ParallaxSize = 800, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}

ATTACHMENT.Reticle = {
    Material = Material("eft/scopes/razor/razor_hd.vmt"),
    Size = 800,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle",
    Offset = Vector(-0.09, 0.01, 0)
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0,10,-0.35)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(-0.025, -0.04, 0)
end