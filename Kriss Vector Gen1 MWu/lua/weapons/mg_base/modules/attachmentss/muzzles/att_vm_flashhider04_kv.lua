if (CLIENT) then
    KV_LangLib_Barrel_Category = language.GetPhrase("#KV_LangLib_Barrel.Category")
end

ATTACHMENT.Base = "att_muzzle_kv"
ATTACHMENT.Name = "Flash Guard"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_flashhider05.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_flashhider05.vmt")
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
    weapon.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end 