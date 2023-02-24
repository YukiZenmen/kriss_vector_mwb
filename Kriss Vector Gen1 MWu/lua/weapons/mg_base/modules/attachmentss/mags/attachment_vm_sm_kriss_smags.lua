ATTACHMENT.Base = "att_magazine_kv"
ATTACHMENT.Name = "12 Rounds 9mm Hollow Point Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_smags.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_smags.vmt")

ATTACHMENT.VElement  = {
                Bone = "j_mag1",
                Position = Vector(0.0, 1.05,0.1),
                Angles = Angle(),
                }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.RPM = weapon.Primary.RPM - 600
        weapon.Primary.ClipSize = 12
        weapon.Animations.Reload = weapon.Animations.Reload_Smag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Smag
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.7
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.7
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.7
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.7
        weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.3
        weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.3
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 1.1
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 1.1
end