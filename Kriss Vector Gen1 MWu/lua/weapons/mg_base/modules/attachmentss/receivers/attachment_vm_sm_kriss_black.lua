ATTACHMENT.Base = "att_skin_kv"
//ATTACHMENT.Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_receiver.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter2("grip_back_offset")
end 