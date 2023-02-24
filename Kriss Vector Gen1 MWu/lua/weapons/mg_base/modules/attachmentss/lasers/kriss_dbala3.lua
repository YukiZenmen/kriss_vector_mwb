ATTACHMENT.Base = "att_laser_kv"
ATTACHMENT.Name = "Dbala3"
ATTACHMENT.Model = Model("models/efttt/Laser/dbala3.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_DA3.vmt")
ATTACHMENT.UIColor = Color(139,235,114)
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

ATTACHMENT.ExcludedByAttachments = {"attachment_vm_sm_kriss_barrel", "attachment_vm_sm_victor_104f", "attachment_vm_sm_victor_gjt", "attachment_vm_sm_victor_kriss2"}

ATTACHMENT.Bodygroups ={
}


ATTACHMENT.VElement = {
    Bone = "tag_laser_attach",
    Position = Vector(-1.52, 4, -0.3),
    Angles = Angle(0, 0, 0),
    Offsets = {
                        ["attachment_vm_sm_kriss_barlong"] = {Vector(0, 0, 0), Angle()},
                        ["attachment_vm_sm_kriss_barsil"] = {Vector(2.98, 0, 2.75), Angle(0, 0, 180)},
                        ["attachment_vm_sm_victor_kriss2"] = {Vector(0,0,0.875), Angle(0, 0,0)},
						["attachment_vm_sm_kriss_handguard"] = {Vector(3.1,0,-0.17), Angle(0, 0,90)}
                    }
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Cone.Hip = weapon.Cone.Hip * 0.9
    weapon.Cone.Ads = weapon.Cone.Ads * 0.9
    weapon.Cone.Increase = weapon.Cone.Increase * 0.9
	    weapon.LaserAimAngles = Angle(-0.3, 0.05, -45)
        weapon.LaserAimPos = Vector(-2, 3, 0)
end 