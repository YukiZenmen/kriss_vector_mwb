ATTACHMENT.Base = "att_laser_kv"
ATTACHMENT.Name = "Echo 14"
ATTACHMENT.Model = Model("models/efttt/Laser/leishe_1.mdl")
ATTACHMENT.Icon = Material("icons/icon_laser_1.vmt")
ATTACHMENT.UIColor = Color(139,235,114)
ATTACHMENT.Laser = {
    BeamMaterial = Material("mw19_laserbeam.vmt"),
    DotMaterial = Material("sprites/light_glow02_add.vmt"),
    BeamSize = 15,
    BeamWidth = 1,
    DotSize = 5,
    Color = Color(63,221,74),
    Attachment = "laser"
}
ATTACHMENT.Flashlight = {
    FlashlightMaterial = Material("effects/flashlight001.vmt"),
    Color = Color(255, 255, 255, 255),
    Attachment = "laser"
}

ATTACHMENT.Bodygroups ={
}

ATTACHMENT.ExcludedByAttachments = {"attachment_vm_sm_kriss_barrel"}

ATTACHMENT.VElement = {
    Bone = "tag_laser_attach",
    Position = Vector(-1.5, 4, 0.25),
    Angles = Angle(0, 0, 0),
    Offsets = {                    
                        ["attachment_vm_sm_kriss_barlong"] = {Vector(0, 0, 0), Angle()},
                        ["attachment_vm_sm_kriss_barsil"] = {Vector(2.97, 0, 2.75), Angle(0, 0, 180)}
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