ATTACHMENT.Base = "att_stock_kv"
ATTACHMENT.Name = "ZLR Blade"
ATTACHMENT.Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_stocksn.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_stocksn.vmt")

ATTACHMENT.VElement  = {
                Bone = "tag_stock_attach",
                Position = Vector(-0.04, -1.03, 0.05),
                Angles = Angle(0.0,-0,0),
                }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.85
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
end