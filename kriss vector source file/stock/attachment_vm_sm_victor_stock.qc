// Created by Crowbar 0.71

$modelname "viper/mw/attachments/v_kriss_stock.mdl"

$bodygroup "stock"
{
	studio "stock_black.smd"
	studio "stock_atacs.smd"
	studio "stock_tan.smd"
	studio "stock_white.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque

$cdmaterials "models\weapons\kriss\"
$cdmaterials "viper\MW\weapons\victor\"

$cbox 0 0 0 0 0 0

$bbox -7.62 -1.229 -4.502 2.095 0.803 1.243

$definebone "tag_stock_attach" "" 0 0 0 0 0 0 0 0 0 0 0 0

$bonemerge "tag_stock_attach"


$sequence "reference" {
	"attachment_vm_sm_victor_stock_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$keyvalues
{
	qc_path 
	{
		"value"		"c:\github\source files mw\source-files-mw\attachments\smgs\victor\attachment_stock.qc"
	}
}
