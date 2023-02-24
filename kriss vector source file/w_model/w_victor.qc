// Created by Crowbar 0.71

$modelname "viper/mw/weapons/w_kriss.mdl"

$bodygroup "receiver"
{
	studio "kriss_black.smd"
	studio "kriss_atacs.smd"
	studio "kriss_tan.smd"
	studio "kriss_urban.smd"
	studio "kriss_white.smd"
}

$bodygroup "tag_stock"
{
	blank
	studio "adapter.smd"
}

$bodygroup "misc"
{
	blank
	studio "tube.smd"
}

$bodygroup "tag_laser"
{
	blank
	studio "attachment_vm_sm_victor_tag_laser_attach.smd"
}
$bodygroup "sight"
{
	studio "attachment_vm_sm_victor_tag_sight_on.smd"
	studio "attachment_vm_sm_victor_tag_sight_off.smd"
	blank
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque

$cdmaterials "models\weapons\kriss\"
$cdmaterials "viper\MW\weapons\victor\"
$cdmaterials "viper\MW\attachments\"

$attachment "muzzle" "tag_flash" 0 0 0 rotate 0 0 0
$attachment "right_hand" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate 0 0 0
$attachment "shell_eject" "tag_brass" 0 0 0 rotate 0 0 0
$attachment "reflex" "tag_reflex" 0 0 0 rotate 0 0 0
$attachment "holo" "tag_holo" 0 0 0 rotate 0 0 0
$attachment "scope" "tag_scope" 0 0 0 rotate 0 0 0
$attachment "acog" "tag_acog_2" 0 0 0 rotate 0 0 0
$attachment "thermal" "tag_thermal" 0 0 0 rotate 0 0 0
$attachment "hybrid" "tag_hybrid" 0 0 0 rotate 0 0 0
$attachment "align" "tag_align_gun" 0 0 0 rotate 0 0 0
$attachment "laser" "tag_laser_attach" 0 0 0 rotate 0 0 0
$attachment "grip" "tag_grip_attach" 0 0 0 rotate 0 0 0
$attachment "folding_grip" "tag_folding_grip" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -2.275 -3.495 -2.536 1.982 4.799 11.541

$definebone "ValveBiped.Bip01_R_Hand" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_sling" "ValveBiped.Bip01_R_Hand" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_RH" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_acog_2" "tag_sling" 2.801 0 0.686 0 0 0 0 0 0 0 0 0
$definebone "tag_align_gun" "tag_sling" -0.218 -0.001 1.9 0 0 0 0 0 0 0 0 0
$definebone "tag_barrel_attach" "tag_sling" 9.352 0 -1.491 0 0 0 0 0 0 0 0 0
$definebone "tag_flash" "tag_barrel_attach" 2.743 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_brass" "tag_sling" 6.416999 -0.694 -0.581 0 -89.999982 0 0 0 0 0 0 0
$definebone "tag_folding_grip" "tag_sling" 8.527 0 -2.466 0 0 0 0 0 0 0 0 0
$definebone "tag_grip_attach" "tag_sling" 11.401 0 -2.47 0 0 0 0 0 0 0 0 0
$definebone "tag_holo" "tag_sling" 2.801 0 0.686 0 0 0 0 0 0 0 0 0
$definebone "tag_hybrid" "tag_sling" 2.801 0 0.686 0 0 0 0 0 0 0 0 0
$definebone "tag_ik_loc_le" "tag_sling" 4.080999 2.301 -3.885 5.375432 -21.44266 -97.247209 0 0 0 0 0 0
$definebone "tag_ik_loc_ri" "tag_sling" -1.975 -1.047 -3.225 -13.936281 -7.468734 -108.509214 0 0 0 0 0 0
$definebone "tag_laser_show" "tag_sling" 7.499 0 0.686 0 0 0 0 0 0 0 0 0
$definebone "tag_laser_attach" "tag_laser_show" 1.077 -1.497 -0.605 0 0 0 0 0 0 0 0 0
$definebone "tag_mag_attach" "tag_sling" 5.79 0 -5.733 0 0 0 0 0 0 0 0 0
$definebone "j_mag1" "tag_mag_attach" -0.879 0 0.106 0 0 0 0 0 0 0 0 0
$definebone "j_mag2" "tag_mag_attach" -0.879 0 0.106 0 0 0 0 0 0 0 0 0
$definebone "tag_reflex" "tag_sling" 2.801 0 0.686 0 0 0 0 0 0 0 0 0
$definebone "tag_scope" "tag_sling" 2.801 0 0.686 0 0 0 0 0 0 0 0 0
$definebone "tag_stock_attach" "tag_sling" -1.972 -0.005 -0.311 0 0 0 0 0 0 0 0 0
$definebone "tag_stock_show" "tag_sling" -1.972 -0.005 -0.311 0 0 0 0 0 0 0 0 0
$definebone "tag_thermal" "tag_sling" 2.801 0 0.686 0 0 0 0 0 0 0 0 0
$definebone "j_gun" "" 0 0 0 0 0 0 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "tag_sling"
$bonemerge "tag_acog_2"
$bonemerge "tag_barrel_attach"
$bonemerge "tag_folding_grip"
$bonemerge "tag_grip_attach"
$bonemerge "tag_holo"
$bonemerge "tag_ik_loc_le"
$bonemerge "tag_ik_loc_ri"
$bonemerge "tag_laser_show"
$bonemerge "tag_laser_attach"
$bonemerge "tag_mag_attach"
$bonemerge "j_mag1"
$bonemerge "j_mag2"
$bonemerge "tag_reflex"
$bonemerge "tag_scope"
$bonemerge "tag_stock_attach"
$bonemerge "tag_stock_show"
$bonemerge "tag_thermal"


$sequence "reference" {
	"w_victor_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_victor_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
