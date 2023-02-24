// Created by Crowbar 0.71

$modelname "viper/mw/attachments/victor/v_kriss_barrel_alis.mdl"

$bodygroup "barrel"
{
	studio "barrel_alis.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque

$cdmaterials "models\weapons\kriss\"
$cdmaterials "viper\MW\weapons\victor\"

$attachment "muzzle" "tag_flash_attachment" 0 0 0 rotate 0 0 0
$attachment "silencer" "tag_silencer" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -2.106 -0.365 -0.366 2.743 0.365 0.363

$definebone "tag_barrel_attach" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_flash_attachment" "tag_barrel_attach" 2.743 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_silencer" "tag_barrel_attach" 2.306 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_tip" "tag_barrel_attach" 2.306 0 0 0 0 0 0 0 0 0 0 0


$sequence "reference" {
	"attachment_vm_sm_victor_barrel_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
