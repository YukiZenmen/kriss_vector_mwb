ATTACHMENT.Base = "att_stock_kv"
ATTACHMENT.Name = "Prs"
ATTACHMENT.Model = Model("models/efttt/stock/prs/stock_ar15_magpul_prs_gen2_fde.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_s_prs.vmt")
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_RARE
ATTACHMENT.Bodygroups ={
    ["tag_stock"] = 1,
	["misc"] = 1
}


ATTACHMENT.VElement = {
    Bone = "tag_stock_attach",
    Position = Vector(-0.055, -2.575, -0.06),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.75
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.6
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.8
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.95
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.65
    weapon.Cone.Increase =  weapon.Cone.Increase * 0.5
	weapon.ViewModelOffsets.AimKickMultiplier =  0.8
	weapon.ViewModelOffsets.RecoilMultiplier =  0.4
	weapon.Recoil.ViewModelMultiplier = 0.4	
end