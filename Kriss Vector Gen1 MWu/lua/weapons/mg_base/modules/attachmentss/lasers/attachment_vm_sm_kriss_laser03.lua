ATTACHMENT.Base = "att_laser_kv"
ATTACHMENT.Name = "1mW Laser"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_laser_cylinder03.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/laser/icon_attachment_laser_cylinder03.vmt")
ATTACHMENT.Laser = {
    BeamMaterial = Material("mw19_laserbeam.vmt"),
    DotMaterial = Material("sprites/light_glow02_add.vmt"),
    BeamSize = 15,
    BeamWidth = 0.5,
    DotSize = 5,
    Color = Color(0, 255, 0, 255),
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
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Cone.Hip = weapon.Cone.Hip * 0.8
    weapon.Cone.Ads = weapon.Cone.Ads * 0.8
    weapon.Cone.Increase = weapon.Cone.Increase * 0.8
        weapon.LaserAimAngles = Angle(-0.3, 0.05, -45)
        weapon.LaserAimPos = Vector(-2, 0, 0)
end 