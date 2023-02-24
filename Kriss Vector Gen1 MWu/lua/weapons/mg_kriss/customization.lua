AddCSLuaFile()

--()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("weap_victor_sup_fire_plr")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("Atmo_SMG_Sup.Outside"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
    
            Inside = { 
                Layer = Sound("Atmo_Pistol_Sup.Inside"),
                Reflection = Sound("Reflection_ARSUP.Inside")
            }
        }
    }
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end


SWEP.Customization = {

    {"att_perk_kv", "attachment_vm_sm_victor_perk_soh_kv", "att_perk_fmj_kv", "att_perk_ricochet_kv", "att_perk_rof_kv"}, 

    {"attachment_vm_sm_kriss_stock", "attachment_vm_sm_kriss_stock_atacs", "attachment_vm_sm_kriss_stock_tan", "attachment_vm_sm_kriss_stock_white", "attachment_vm_sm_kriss_stockh", "attachment_vm_sm_kriss_stockno",  
    "attachment_vm_sm_kriss_stocks", "attachment_vm_sm_kriss_stocksn",
    "kriss_330_ts",
    "kriss_ctr",
    "kriss_ds150",
    "kriss_emod",
    "kriss_m4ss",
    "kriss_prs",
    "kriss_ubr"},

    {"attachment_vm_sm_kriss_mag", "attachment_vm_sm_kriss_mag1", "attachment_vm_sm_kriss_smags", "attachment_vm_sm_kriss_smags1", "attachment_vm_sm_kriss_drummag", "attachment_vm_sm_kriss_drummag1"},

    {"attachment_vm_sm_kriss_barrel", "attachment_vm_sm_kriss_barlong", 
    "attachment_vm_sm_kriss_barsil", "attachment_vm_sm_victor_104f", "attachment_vm_sm_victor_gjt", "attachment_vm_sm_victor_kriss2", "attachment_vm_sm_kriss_handguard"},

    {"att_muzzle_kv", "att_vm_breacher01_kv", "att_vm_breacher02_kv", "att_vm_compensator01_kv", 
    "att_vm_compensator02_kv", "att_vm_flashhider01_kv", "att_vm_flashhider02_kv", 
    "att_vm_flashhider03_kv", "att_vm_flashhider04_kv", "att_vm_muzzlebrake01_kv",
    "att_vm_muzzlebrake02_kv", "att_vm_muzzlebrake03_kv",
    "att_vm_silencer01_kv", "att_vm_silencer02_kv", "att_vm_silencer03_kv",
    "att_vm_silencer04_kv", "att_vm_silencer05_kv", "att_vm_silencer06_kv", "attachment_vm_sm_kriss_suppressor"},

    {"att_sight_kv",
    "kriss_fc1",
	"kriss_aems",
	"kriss_558",
	"kriss_uh1",
	"kriss_510c",
	"kriss_r8t",
	"kriss_m4s",
	"kriss_r4t",
	"kriss_r1x",
	"kriss_acog",
	"kriss_x8",
	"kriss_rg3",
	"kriss_x3",
	"kriss_x5",
	"kriss_ars",
	"kriss_pkas",
	"kriss_6x",
	"kriss_pbps",
	"kriss_po156",
    "kriss_thermal_west01",
    "kriss_hybrid_west01",
	"att_vm_minireddot01_kriss"},

--"kriss_am4" "kriss_lqd" "kriss_sf2" rip these sights

    {"att_laser_kv", "attachment_vm_sm_kriss_laser01", "attachment_vm_sm_kriss_laser02", 
    "attachment_vm_sm_kriss_laser03",
    "kriss_ls321",
    "kriss_mawl",
    "kriss_peq",
    "kriss_ngal",
    "kriss_dbala3",
},
--"kriss_laser_1" rip echo 14

    {"att_grip", "attachment_vm_sm_kriss_angledgrip01", "attachment_vm_sm_kriss_angledgrip02", "attachment_vm_sm_kriss_stubbygrip01", 
    "attachment_vm_sm_kriss_stubbygrip02", "attachment_vm_sm_kriss_vertgrip01", "attachment_vm_sm_kriss_vertgrip02", 
    "attachment_vm_sm_kriss_vertgrip03"},

    {"att_anim_kv", "attachment_vm_sm_kriss_tac_sprint", "attachment_vm_sm_kriss_mix_sprint", "attachment_vm_sm_kriss_ins2_sprint", "attachment_vm_sm_kriss_mw2_sprint"},

    {"attachment_vm_sm_kriss_black", "attachment_vm_sm_kriss_atacs", "attachment_vm_sm_kriss_tan", "attachment_vm_sm_kriss_urban", "attachment_vm_sm_kriss_white"},

    {"att_gadget_kv", "kriss_attachment_hbs"},

    {"att_ammo_kv", "att_ammo_nophys"},
	
	--{"mw22_customization_ui"}
}

require("mw_utils")
mw_utils.LoadInjectors(SWEP)   