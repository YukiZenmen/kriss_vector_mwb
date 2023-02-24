ATTACHMENT.Base = "att_optic_6x_kv"
ATTACHMENT.Name = "PO 1.5x6 PICATINNY"
ATTACHMENT.Model = Model("models/more/scopes/po156/po156.mdl")
ATTACHMENT.Icon = Material("more_s_icons/po156.vmt")
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-0.025, -0, -0.1),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
    ["sight"] = 2,
    ["tag_sight_barrel"] = 2
}
ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_scope_vz_lens.vmt"),
    HideModel = Model("models/more/scopes/po156/po156_lh.mdl"),
    LensBodygroup = "lens",
    FOV = 3, 
    ParallaxSize = 900, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}

ATTACHMENT.Reticle = {
    Material = Material("more/reticles/po156.vmt"),
    Size =800,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle",
    Offset = Vector(-0.05, 0.2, 0)
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Zoom.ViewModelFovMultiplier = weapon.Zoom.ViewModelFovMultiplier * 1.1
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(-0,5,0.3)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(0.075, -0.03, 0)
end