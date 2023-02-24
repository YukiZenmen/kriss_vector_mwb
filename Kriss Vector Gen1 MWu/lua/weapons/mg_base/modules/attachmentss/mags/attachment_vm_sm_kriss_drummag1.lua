ATTACHMENT.Base = "att_magazine_kv"
ATTACHMENT.Name = "50 Rounds 9mm Drums"
ATTACHMENT.Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_drummag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_drummag.vmt")
ATTACHMENT.Bodygroups = {
    ["mags"] = 0
}
ATTACHMENT.VElement  = {
                Bone = "j_mag1",
                Position = Vector(0.0, 1.05,0.1),
                Angles = Angle(),
                }


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.ClipSize = 50
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.65
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.65
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.65
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.65
        weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 0.95
        weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 0.95
        weapon.Animations.Reload = weapon.Animations.Reload_Drum
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Drum
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
end