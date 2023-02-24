ATTACHMENT.Base = "att_stock_kv"
ATTACHMENT.Name = "Triangle stock"
ATTACHMENT.Model = Model("models/more/stock/mac330_stock2.mdl")
ATTACHMENT.Icon = Material("icons/mac_ts.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_stock"] = 1,
	["misc"] = 1
}

ATTACHMENT.VElement = {
    Bone = "tag_stock_attach",
    Position = Vector(-0.055, -1.27, -0.12),
    Angles = Angle(0, 0, 0),
    Offsets = {}
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.2
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.8
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.95
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.2
	--weapon.ViewModelOffsets.AimKickMultiplier =  1.1
	--weapon.ViewModelOffsets.RecoilMultiplier =  1.1
	--weapon.Recoil.ViewModelMultiplier = 0.8	
end