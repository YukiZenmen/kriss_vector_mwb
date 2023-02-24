ATTACHMENT.Base = "att_stock_kv"
ATTACHMENT.Name = "Vltor emod"
ATTACHMENT.Model = Model("models/efttt/stock/vltor/stock_ar15_vltor_emod.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_s_haijun.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_stock"] = 1,
	["misc"] = 1
}


ATTACHMENT.VElement = {
    Bone = "tag_stock_attach",
    Position = Vector(-0.055, -1.8, -0.06),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.95
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.95
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1
end