// Created by Crowbar 0.71

$modelname "viper/mw/attachments/kriss/v_kriss_mag.mdl"

$bodygroup "grip"
{
	studio "mag.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\kriss\"
$cdmaterials "viper\MW\weapons\victor\"

$cbox 0 0 0 0 0 0

$bbox -3.256 -0.655 -5.084 1.331 0.652 4.253

$definebone "tag_mag_attach" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_mag1" "tag_mag_attach" -0.879 0 0.106 0 0 0 0 0 0 0 0 0
$definebone "j_mag2" "tag_mag_attach" -0.879 0 0.106 0 0 0 0 0 0 0 0 0
$definebone "j_bullet1" "j_mag1" 1.574 -0.002 3.92 0 0 0 0 0 0 0 0 0
$definebone "j_bullet2" "j_mag1" 1.432 -0.002 3.532 0 0 0 0 0 0 0 0 0
$definebone "j_bullet3" "j_mag1" 1.34 -0.002 3.207 0 0 0 0 0 0 0 0 0
$definebone "j_follower" "j_mag1" 1.177 0 2.807 0 0 0 0 0 0 0 0 0


$sequence "reference" {
	"attachment_vm_sm_victor_mag_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$keyvalues
{
	qc_path 
	{
		"value"		"c:\github\source files mw\source-files-mw\attachments\smgs\victor\attachment_mag.qc"
	}
}
