ATTACHMENT.Base = "att_skin_kv"
ATTACHMENT.Name = "Tan Receiver"
//ATTACHMENT.Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_receiver_v2.mdl")
//ATTACHMENT.Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_receiver_v2.vmt")
ATTACHMENT.CosmeticChange = true
ATTACHMENT.Bodygroups ={
["receiver"] = 2,
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter2("grip_back_offset")
end 
