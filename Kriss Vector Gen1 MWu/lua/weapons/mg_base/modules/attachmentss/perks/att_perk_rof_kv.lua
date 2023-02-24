if (CLIENT) then
    KV_LangLib_Perk_ROF = language.GetPhrase("#KV_LangLib_Perk.ROF")
end

ATTACHMENT.Base = "att_perk_kv"
ATTACHMENT.Name = KV_LangLib_Perk_ROF
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/perks/perk_icon_rof.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Primary.RPM = weapon.Primary.RPM + 150
end