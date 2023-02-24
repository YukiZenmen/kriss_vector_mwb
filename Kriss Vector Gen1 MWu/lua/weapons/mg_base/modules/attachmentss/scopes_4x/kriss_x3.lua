ATTACHMENT.Base = "att_optic_4x_kv"
ATTACHMENT.Name = "SPITFIRE™ 3X"
ATTACHMENT.Model = Model("models/efttt/scopes/v3x/vorte3x.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_v3x.vmt")
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-.025, -0.5, -0.1),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
    ["sight"] = 2,
    ["tag_sight_barrel"] = 2
}
ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_scope_vz_lens.vmt"),
    HideModel = Model("models/efttt/scopes/v3x/x3_lh.mdl"),
    LensBodygroup = "lens",
    FOV = 3, 
    ParallaxSize = 700, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}

ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/eotech_reticle.vmt"),
    Size = 100,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle",
    Offset = Angle(-0.04,-0.13,0)
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0,15,-0.6)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(-0.12, -0.025, 0)
end