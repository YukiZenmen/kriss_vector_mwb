if (CLIENT) then
    KV_LangLib_Barrel_Category = language.GetPhrase("#KV_LangLib_Barrel.Category")
end

ATTACHMENT.Base = "att_muzzle_kv"
ATTACHMENT.Name = "Tactical Suppressor"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_silencer_east02.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_silencer_east02.vmt")
ATTACHMENT.BonemergeToCategory = {KV_LangLib_Barrel_Category}
ATTACHMENT.ExcludedByAttachments = {"attachment_vm_sm_victor_104f", "attachment_vm_sm_victor_gjt", "attachment_vm_sm_victor_kriss2"}
ATTACHMENT.AttachmentBodygroups = {
    ["tag_tip"] = 1,
    ["muzzle"] = 1,
    ["tip"] = 1
}
ATTACHMENT.Bodygroups = {
    ["tag_tip"] = 1,
    ["muzzle"] = 1,
    ["tip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.99
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.99
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.98
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.98
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.04
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.04
    weapon:doSuppressorStats()
end 