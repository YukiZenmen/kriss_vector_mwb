ATTACHMENT.Base = "att_magazine_kv"
ATTACHMENT.Model = Model("models/weapons/payday2/v_kriss_mag.mdl")
ATTACHMENT.Bodygroups = {
    ["mags"] = 0
}
ATTACHMENT.VElement  = {
                Bone = "j_mag1",
                Position = Vector(-0.0015, 0.195,-0.1),
                Angles = Angle(),
                }
ATTACHMENT.BulletList = {
    [1] = {"j_bullet1"},
    [2] = {"j_bullet2"},
}


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end