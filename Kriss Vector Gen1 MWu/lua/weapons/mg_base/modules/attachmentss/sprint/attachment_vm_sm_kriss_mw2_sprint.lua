ATTACHMENT.Base = "att_anim_kv"
ATTACHMENT.Name = "MW2022 Sprint"
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_LEGENDARY
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/perks/perk_icon_fastreload.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    PrintTable(BaseClass)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Sprint.Pos = Vector(5, -4, -2.5)
	weapon.ViewModelOffsets.Sprint.Angles = Angle(-20, 20, 10)
    end