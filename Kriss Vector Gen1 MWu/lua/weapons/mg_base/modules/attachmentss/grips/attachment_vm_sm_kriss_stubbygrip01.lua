ATTACHMENT.Base = "att_grip_kv"
ATTACHMENT.Name = "Merc Foregrip"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_vertgrip_stubby01.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/grips/icon_attachment_vertgrip_stubby01.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_grip_hide"] = 1,
    ["tag_grip_attach"] = 1
}
ATTACHMENT.ExcludedByAttachments = {"attachment_vm_sm_victor_104f", "attachment_vm_sm_victor_gjt"}
ATTACHMENT.VElement  = {
                Bone = "tag_folding_grip",
                Position = Vector(0.0, 0.2, 0.15),
                Angles = Angle(),
				Offsets = {
                ["attachment_vm_sm_kriss_handguard"] = {Vector(0, 0, -0.4), Angle()},
                 }
                }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon.Recoil.Horizontal[1] = self:ChangeRecoil(weapon.Recoil.Horizontal[1], 0.9)
    weapon.Recoil.Horizontal[2] = self:ChangeRecoil(weapon.Recoil.Horizontal[2], 0.9)
    weapon.HoldType = "RifleWithVerticalGrip"
weapon:SetGripPoseParameter("grip_vertpro_offset")
end 