ATTACHMENT.Base = "att_optic_4x_kv"
ATTACHMENT.Name = "PKAS"
ATTACHMENT.Model = Model("models/efttt/scopes/pkas/pkas.mdl")
ATTACHMENT.Icon = Material("icons/icon_pkas.vmt")
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-0.025, -0.5, -0.1),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
    ["sight"] = 1,
    ["tag_sight_barrel"] = 2
}
ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_scope_vz_lens.vmt"),
    HideModel = Model("models/efttt/scopes/pkas/pkas_lh.mdl"),
    LensBodygroup = "lens",
    FOV = 3, 
    ParallaxSize = 700, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}

ATTACHMENT.Reticle = {
    Material = Material("eft/reticles/pkas.vmt"),
    Size = 400,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle",
    Offset = Angle(-0.05,0.4,0)
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0,10,-0.34)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(0.23, -0.03, 0)
end