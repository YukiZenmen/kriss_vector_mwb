// Created by Crowbar 0.71

$modelname "v_kriss_handguardtd.mdl"

$bodygroup "barrel"
{
	studio "handguard.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque

$cdmaterials "models\weapons\kriss\"
$cdmaterials "viper\MW\weapons\victor\"

$attachment "muzzle" "tag_flash_attachment" -6 0 0 rotate 0 0 0
$attachment "silencer" "tag_silencer" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -1.185 -1.243 -1.304 12.785 1.243 1.242

$definebone "tag_barrel_attach" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_flash_attachment" "tag_barrel_attach" 12.061 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_silencer" "tag_barrel_attach" 11.623999 0 0 0 0 0 -6 0 0 0 0 0


$sequence "reference" {
	"attachment_vm_sm_victor_barlong_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
