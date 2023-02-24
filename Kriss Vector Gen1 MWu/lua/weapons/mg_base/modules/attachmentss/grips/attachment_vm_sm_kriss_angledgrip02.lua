ATTACHMENT.Base = "att_grip_kv"
ATTACHMENT.Name = "Tactical Foregrip"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_angledgrip02.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/grips/icon_attachment_angledgrip02.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_grip_hide"] = 1,
    ["tag_grip_attach"] = 1
}
ATTACHMENT.ExcludedByAttachments = {"attachment_vm_sm_victor_104f", "attachment_vm_sm_victor_gjt"}
ATTACHMENT.VElement  = {
                Bone = "tag_grip_attach",
                Position = Vector(0.0, -0.3, 0.15),
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
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.08
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.08
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.08
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.08
    weapon.Recoil.Horizontal[1] = self:ChangeRecoil(weapon.Recoil.Horizontal[1], 1.02)
    weapon.Recoil.Horizontal[2] = self:ChangeRecoil(weapon.Recoil.Horizontal[2], 1.02)
    weapon.Recoil.Vertical[1] = self:ChangeRecoil(weapon.Recoil.Vertical[1], 1.02)
    weapon.Recoil.Vertical[2] = self:ChangeRecoil(weapon.Recoil.Vertical[2], 1.02)
    weapon:SetGripPoseParameter("grip_ang_offset")

end 