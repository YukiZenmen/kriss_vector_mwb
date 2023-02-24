if (CLIENT) then
    KV_LangLib_Perk_Category = language.GetPhrase("#KV_LangLib_Perk.Category")
end

ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Default"
ATTACHMENT.Category = KV_LangLib_Perk_Category

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    if (weapon.Bullet != nil) then
        weapon.Bullet.Ricochet = false
    end
end