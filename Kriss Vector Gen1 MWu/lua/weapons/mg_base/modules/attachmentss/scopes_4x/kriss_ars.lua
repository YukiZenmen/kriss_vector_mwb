ATTACHMENT.Base = "att_optic_2x_kv"
ATTACHMENT.Name = "Vortex Spitfire AR Prism"
ATTACHMENT.Model = Model("models/more/scopes/ars/ars.mdl")
ATTACHMENT.Icon = Material("more_s_icons/ars.vmt")
ATTACHMENT.VElement = {
    Bone = "tag_reflex",
    Position = Vector(-0.025, -0.5, -0.05),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

ATTACHMENT.Bodygroups ={
    ["sight"] = 2,
    ["tag_sight_barrel"] = 2
}
ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_scope_vz_lens.vmt"),
    HideModel = Model("models/more/scopes/ars/ars_lh.mdl"),
    LensBodygroup = "lens",
    FOV = 3, 
    ParallaxSize = 700, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}

ATTACHMENT.Reticle = {
    Material = Material("more/reticles/ars.vmt"),
    Size = 250,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle",
    Offset = Angle(-0.0,0,0)
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0.01,4,-0.25)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(-0.025, 0.0, 0)
end