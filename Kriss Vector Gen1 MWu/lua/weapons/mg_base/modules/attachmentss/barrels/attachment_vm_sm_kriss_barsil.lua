ATTACHMENT.Base = "att_barrel_kv"
ATTACHMENT.Name = "ZLR 18 Deadfall"
ATTACHMENT.Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_barsil.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_barsil.vmt")

ATTACHMENT.ExcludedByAttachments = {"att_vm_breacher01_kv", "att_vm_breacher02_kv", "att_vm_compensator01_kv", 
    "att_vm_compensator02_kv", "att_vm_flashhider01_kv", "att_vm_flashhider02_kv", 
    "att_vm_flashhider03_kv", "att_vm_flashhider04_kv", "att_vm_muzzlebrake01_kv",
    "att_vm_muzzlebrake02_kv", "att_vm_muzzlebrake03_kv",
    "att_vm_silencer01_kv", "att_vm_silencer02_kv", "att_vm_silencer03_kv",
    "att_vm_silencer04_kv", "att_vm_silencer05_kv", "att_vm_silencer06_kv", "attachment_vm_sm_kriss_suppressor"}

ATTACHMENT.VElement  = {
                Bone = "tag_barrel_attach",
                Position = Vector(0.0, -0.3,0.07),
                Angles = Angle(),
                }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.14
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.14
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
        weapon.Cone.Hip = weapon.Cone.Hip * 0.75
        weapon.Cone.Increase = weapon.Cone.Increase * 0.75
    weapon:doSuppressorStats()
end