if (CLIENT) then
    KV_LangLib_Animations_Category = language.GetPhrase("#KV_LangLib_Animations.Category")
end

ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Default"
ATTACHMENT.Category = KV_LangLib_Animations_Category

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    PrintTable(BaseClass)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Sprint_In = weapon.Animations.Sprint_In
    end