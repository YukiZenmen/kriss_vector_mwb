ATTACHMENT.Base = "att_laser_kv"
ATTACHMENT.Name = "Tac Laser"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_laser_cylinder04.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/laser/icon_attachment_laser_cylinder04.vmt")
ATTACHMENT.Laser = {
    BeamMaterial = Material("mw19_laserbeam.vmt"),
    DotMaterial = Material("sprites/light_glow02_add.vmt"),
    BeamSize = 15,
    BeamWidth = 1,
    DotSize = 5,
    Color = Color(255, 0, 0, 255),
    Attachment = "laser"
}
ATTACHMENT.Flashlight = {
    FlashlightMaterial = Material("effects/flashlight001.vmt"),
    Color = Color(255, 255, 255, 255),
    Attachment = "laser"
}
ATTACHMENT.Bodygroups ={
   ["tag_laser"] = 1
}
ATTACHMENT.VElement  = {
                Bone = "tag_laser_attach",
                Position = Vector(-0.05, 0,-0.15),
                Angles = Angle(),
                }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Cone.Hip = weapon.Cone.Hip * 0.9
    weapon.Cone.Ads = weapon.Cone.Ads * 0.9
    weapon.Cone.Increase = weapon.Cone.Increase * 0.9
    weapon.LaserAimAngles = Angle(-0.3, 0.05, -45)
    weapon.LaserAimPos = Vector(-2, 0, 0)
end 