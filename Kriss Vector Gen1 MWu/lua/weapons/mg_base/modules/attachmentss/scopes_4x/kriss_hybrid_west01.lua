ATTACHMENT.Base = "att_hybrid_4x_kv"
ATTACHMENT.Name = "Integral Hybrid"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_hybrid_west.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/hybrid/icon_attachment_hybrid_west_lw.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1,
    ["sight"] = 2
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1,
    ["sight"] = 2
}

ATTACHMENT.VElement = {
    Bone = "tag_hybrid",
    Position = Vector(-0.025, -3, -0.68),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/attachments/reticle_ui_stencil.vmt"),
    HideModel = Model("models/viper/mw/attachments/attachment_vm_hybrid_west_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 600, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_acog_default"),
    Size = 350,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.ReticleHybrid = {
    Material = Material("viper/shared/reticles/aimpoint_reticle.vmt"),
    Size = 100,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle2" 
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(-0.02,4,0.17)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(-0.04, -0.025, 0)
                weapon.HybridAimAngles = Angle(-0.0, 0.0, 0)
                weapon.HybridAimPos = Vector(0.02, -2, -1.02)
end
