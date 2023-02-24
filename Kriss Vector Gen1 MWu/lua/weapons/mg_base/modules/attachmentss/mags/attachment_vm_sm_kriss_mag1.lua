ATTACHMENT.Base = "att_magazine_kv"
ATTACHMENT.Name = "33 Rounds 9mm Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_mag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_smags.vmt")

ATTACHMENT.BulletList = {
    [0] = {"j_bullet1"},
    [1] = {"j_bullet2"},
    [2] = {"j_bullet3"},
}


ATTACHMENT.VElement  = {
                Bone = "j_mag1",
                Position = Vector(0.0, 1.05,0.1),
                Angles = Angle(),
                }
				


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.ClipSize = 33
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.65
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.65
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.65
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.65
        weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 0.95
        weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 0.95
end