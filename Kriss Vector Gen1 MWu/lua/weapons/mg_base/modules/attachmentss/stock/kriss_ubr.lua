ATTACHMENT.Base = "att_stock_kv"
ATTACHMENT.Name = "UBR"
ATTACHMENT.Model = Model("models/efttt/stock/ubr/stock_ar15_magpul_ubr_gen2.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_s_ubr.vmt")
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_RARE
ATTACHMENT.Bodygroups ={
    ["tag_stock"] = 1,
	["misc"] = 1
}


ATTACHMENT.VElement = {
    Bone = "tag_stock_attach",
    Position = Vector(-0.055, -2.5, -0.06),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.75
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.75
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.95
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.65
    weapon.Cone.Increase =  weapon.Cone.Increase * 0.5
	weapon.ViewModelOffsets.AimKickMultiplier =  1.2
	weapon.ViewModelOffsets.RecoilMultiplier =  0.4
	weapon.Recoil.ViewModelMultiplier = 0.7	
end