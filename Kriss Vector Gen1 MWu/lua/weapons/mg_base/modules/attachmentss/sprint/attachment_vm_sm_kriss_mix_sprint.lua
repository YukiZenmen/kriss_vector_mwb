ATTACHMENT.Base = "att_anim_kv"
ATTACHMENT.Name = "Mixed Sprint"
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_LEGENDARY
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/perks/perk_icon_fastreload.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    PrintTable(BaseClass)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Sprint_In = weapon.Animations.Sprint_In2
    end