if (CLIENT) then
    KV_LangLib_Ammo_Category = language.GetPhrase("#KV_LangLib_Ammo.Category")
end

ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Default Ammo"
ATTACHMENT.Category = KV_LangLib_Ammo_Category
function ATTACHMENT:OnImpact(weapon, dmgInfo, tr)
end