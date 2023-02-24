AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_rifle")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

SWEP.BulletList = {[0] = "j_bullet1", [1] = "j_bullet2", [2] = "j_bullet3", [3] = "j_bullet4", [4] = "j_bullet5", [5] = "j_bullet6", [6] = "j_bullet7",
[7] = "j_bullet8", [8] = "j_bullet9", [9] = "j_bullet10", [10] = "j_bullet11", [11] = "j_bullet12"}

if CLIENT then
    killicon.Add( "mg_victor", "VGUI/entities/mg_kriss", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/hud/mg_kriss")
    KV_LangLib_FireMode_Full_Auto = language.GetPhrase("#KV_LangLib_FireMode.Full_Auto")
    KV_LangLib_FireMode_Semi_Auto = language.GetPhrase("#KV_LangLib_FireMode.Semi_Auto")
    KV_LangLib_FireMode_2Round_Burst = language.GetPhrase("#KV_LangLib_FireMode.2Round_Burst")
end

SWEP.Base = "mg_base"
SWEP.GripPoseParameters = {"grip_ang_offset", "grip_vert_offset", "grip_vertpro_offset", "grip_barshort_offset"}
SWEP.GripPoseParameters2 = {"grip_back_offset"}

SWEP.PrintName = "KRISS Vector Gen 1"
SWEP.Category = "Modern Warfare - Customs"
SWEP.SubCategory = "Submachine Guns"
SWEP.Spawnable = true
SWEP.VModel = Model("models/weapons/payday2/v_kriss.mdl")
SWEP.WorldModel = Model("models/weapons/payday2/w_kriss.mdl")

SWEP.Slot = 2
SWEP.HoldType = "TinyGun"
SWEP.Trigger = {
    PressedSound = Sound("weap_victor_fire_first_plr"),
    ReleasedSound = Sound("weap_victor_disconnector_plr"),
    Time = 0.015
}

SWEP.Primary.Sound = Sound("weap_charlie9_fire_fire_plr")
SWEP.Primary.Ammo = "SMG1"
SWEP.Primary.ClipSize = 25
SWEP.Primary.Automatic = true
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 1200 
SWEP.CanChamberRound = true  
  
SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "AC_muzzle_rifle",
    ["MuzzleFlash_Suppressed"] = "AC_muzzle_pistol_suppressed",
    ["Ejection"] = "AC_muzzle_pistol_ejection", 
}

SWEP.Projectile ={
    Class = "mg_sniper_bullet", --bullet entity class
    Speed = 12000, 
    Gravity = 10,
    Penetrate = true
}


SWEP.Reverb = { 
    RoomScale = 50000, --(cubic hu)
    --how big should an area be before it is categorized as 'outside'?

    Sounds = {
        Outside = {
            Layer = Sound("Atmo_SMG2.Outside"),
            Reflection = Sound("Reflection_Pistol.Outside")
        },

        Inside = { 
            Layer = Sound("Atmo_SMG.Inside"),
            Reflection = Sound("Reflection_Pistol.Inside")
        }
    }
}

SWEP.Firemodes = {
    [1] = {
        Name = KV_LangLib_FireMode_Full_Auto,
        OnSet = function()
            return "Firemode_Auto"
        end
    },

    [2] = {
        Name = KV_LangLib_FireMode_2Round_Burst,
        OnSet = function(self)
            self.Primary.Automatic = false
            self.Primary.BurstRounds = 2
            self.Primary.BurstDelay = 0.1

            return "Firemode_Semi"
        end
    },
    [3] = {
        Name = KV_LangLib_FireMode_Semi_Auto,
        OnSet = function(self)
            self.Primary.Automatic = false
            self.Primary.RPM = 600 

            return "Firemode_Semi"
        end
    },

}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_pistol_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 35,
    TemperatureThreshold = 100, --temperature that triggers smoke
    TemperatureCooldown = 100 --degrees per second
}

SWEP.Cone = {
    Hip = 0.17, --accuracy while hip
    Ads = 0.033, --accuracy while aiming
    Increase = 0.032, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.09, --multiply the increase value by this amount while aiming
    Max = 1.15, --the cone size will not go beyond this size
    Decrease = 0.75, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 6215 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {-0.1, -1}, --random value between the 2
    Horizontal = {-1, 1}, --random value between the 2
    Shake = 1.4, --camera shake
    AdsMultiplier = 0.5, --multiply the values by this amount while aiming
    Seed = -103, --give this a random number until you like the current recoil pattern
	--Seed = -7265, --give this a random number until you like the current recoil pattern
	--Punch = 0.1, --recoil will offset the view by this amount (takes vertical, horizontal and adsmul into account)
    --AdsShakeMultiplier = 1
}

SWEP.Bullet = {
    Damage = {24, 10}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    EffectiveRange = 35, --in meters, damage scales within this distance
    DropOffStartRange = 12, --in meters, damage will start dropping off after this range
    Range = 100, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects
    HeadshotMultiplier = 1,
    Penetration = {
        DamageMultiplier = 0.7, --how much damaged is multipled by when leaving a surface.
        MaxCount = 2, --how many times the bullet can penetrate.
        Thickness = 10, --in hu, how thick an obstacle has to be to stop the bullet.
    }
}

SWEP.Zoom = {
    FovMultiplier = 0.85,
    ViewModelFovMultiplier = 0.85,
    Blur = {
        EyeFocusDistance = 7.5
    }
}

SWEP.WorldModelOffsets = {
    Bone = "tag_sling",
    Angles = Angle(0,100,-90),
    Pos = Vector(2,-4,-2.5)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, 0.0, 0),
        Pos = Vector(0.03, 4.5, 0.09)
	    --Angles = Angle(0, 0, 0),
        --Pos = Vector(0, -0, 0)

    },
    Idle = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, -0, 0.1)

    },
	Sprint = {
        --Angles = Angle(0, 30, 0),
        --Pos = Vector(6, -1, 1),
        --Angles = Angle(-20, 20, 10), 
        --Pos = Vector(5, -4, -2.5), 
		Angles = Angle(0,0,0), 
        Pos = Vector(0, 0, 0), 

    },
    Inspection = {
        Bone = "tag_sling",
        X = {
            [0] = {Pos = Vector(5, 0, 3), Angles = Angle(40, 0, 0)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(-15, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 20, 0)},
            [1] = {Pos = Vector(0, 0, 1.5), Angles = Angle(10, 0, 15)}
        }
    },

    RecoilMultiplier = 1.3,
    KickMultiplier = 0.85,
    AimKickMultiplier = 1
}

SWEP.Shell = "mwb_shelleject_9mm"


DEFINE_BASECLASS("mg_base")
function SWEP:PostAttachment(att)
    BaseClass.PostAttachment(self, att)

    if (!self:HasAttachment("att_sight_kv")) then
        if (att.Category == "Sights") then
self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.0,0,-0.06)
self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.04,-0.0, 0)
            else if (att.Category == "瞄具") then
self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.0,0,-0.06)
self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.04,-00, 0)
           end
       end
   end
end



--function SWEP:PostDrawViewModel(vm, weapon, ply)
    --BaseClass.PostDrawViewModel(self, vm, weapon, ply)
   -- self:RemoveBulletsBasedOnClip(self:GetAttachmentModels("Magazine"), self.BulletList)
--end