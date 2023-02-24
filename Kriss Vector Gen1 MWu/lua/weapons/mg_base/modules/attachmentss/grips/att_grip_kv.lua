if (CLIENT) then
    KV_LangLib_Grip_Category = language.GetPhrase("#KV_LangLib_Grip.Category")
end

ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Default Pistol Grip"
ATTACHMENT.Category = KV_LangLib_Grip_Category

function ATTACHMENT:ChangeRecoil(var, mul)
    return var < 0 && var / mul || var * mul
end