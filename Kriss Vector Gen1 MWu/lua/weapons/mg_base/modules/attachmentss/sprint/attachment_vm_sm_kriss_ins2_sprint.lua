ATTACHMENT.Base = "att_anim_kv"
ATTACHMENT.Name = "Insurgency Sprint"
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_LEGENDARY
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/perks/perk_icon_fastreload.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    PrintTable(BaseClass)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Sprint.Pos = Vector(6, -1, 1)
	weapon.ViewModelOffsets.Sprint.Angles = Angle(0, 30, 0)
    end