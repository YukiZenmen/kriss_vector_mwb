ATTACHMENT.Base = "att_grip_kv"
ATTACHMENT.Name = "Foregrip"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_vertgrip02_lod0.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/grips/icon_attachment_vertgrip02.vmt")
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
    weapon.Recoil.Vertical[1] = self:ChangeRecoil(weapon.Recoil.Vertical[1], 0.95)
    weapon.Recoil.Vertical[2] = self:ChangeRecoil(weapon.Recoil.Vertical[2], 0.95)
    weapon.HoldType = "RifleWithVerticalGrip"
    weapon:SetGripPoseParameter("grip_vert_offset")
end 