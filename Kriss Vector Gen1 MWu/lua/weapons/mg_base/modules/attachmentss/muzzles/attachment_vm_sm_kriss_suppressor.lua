--if (CLIENT) then
    --KV_LangLib_Barrel_Category = language.GetPhrase("#KV_LangLib_Barrel.Category")
--end

ATTACHMENT.Base = "att_muzzle_kv"
ATTACHMENT.Name = "ZLR Sabre"
ATTACHMENT.Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_suppressor.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_suppressor.vmt")
ATTACHMENT.ExcludedByAttachments = {"attachment_vm_sm_victor_104f", "attachment_vm_sm_victor_gjt", "attachment_vm_sm_victor_kriss2"}
ATTACHMENT.BonemergeToCategory = {KV_LangLib_Barrel_Category}

--ATTACHMENT.VElement = {
	--Bone = "tag_flash",
	--Position = Vector(0, -1, 0.07),
	--Angles = Angle(),
	--Offsets = {}
	--}

ATTACHMENT.Bodygroups = {
    ["tag_tip"] = 1,
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.08
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.08
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
        weapon.Recoil.Vertical[1] =  weapon.Recoil.Vertical[1] * 0.95
        weapon.Recoil.Vertical[2] =  weapon.Recoil.Vertical[2] * 0.95
    weapon:doSuppressorStats()
end