
$root = "C:\Users\youruser\root"

$AREAS = @("AREA-A", "AREA-B", "AREA-C", "AREA-D", "AREA-E", "AREA-F", "AREA-G", "AREA-H", "AREA-I", "AREA-J")

$categories_in_zone = @("AREA_A_CATEGORY_A", "AREA_A_CATEGORY_B", "AREA_A_CATEGORY_C",
                         "AREA_A_CATEGORY_D", "AREA_A_CATEGORY_E", "AREA_A_CATEGORY_F",
                         "AREA_A_CATEGORY_G", "AREA_A_CATEGORY_H", "AREA_A_CATEGORY_I",
                         "AREA_A_CATEGORY_J",
                         
                         "AREA_B_CATEGORY_A", "AREA_B_CATEGORY_B", "AREA_B_CATEGORY_C",
                         "AREA_B_CATEGORY_D", "AREA_B_CATEGORY_E", "AREA_B_CATEGORY_F",
                         "AREA_B_CATEGORY_G", "AREA_B_CATEGORY_H", "AREA_B_CATEGORY_I",
                         "AREA_B_CATEGORY_J",
                         
                         "AREA_C_CATEGORY_A", "AREA_C_CATEGORY_B", "AREA_C_CATEGORY_C",
                         "AREA_C_CATEGORY_D", "AREA_C_CATEGORY_E", "AREA_C_CATEGORY_F",
                         "AREA_C_CATEGORY_G", "AREA_C_CATEGORY_H", "AREA_C_CATEGORY_I",
                         "AREA_C_CATEGORY_J",
                         
                         "AREA_D_CATEGORY_A", "AREA_D_CATEGORY_B", "AREA_D_CATEGORY_C",
                         "AREA_D_CATEGORY_D", "AREA_D_CATEGORY_E", "AREA_D_CATEGORY_F",
                         "AREA_D_CATEGORY_G", "AREA_D_CATEGORY_H", "AREA_D_CATEGORY_I",
                         "AREA_D_CATEGORY_J",

                         "AREA_E_CATEGORY_A", "AREA_E_CATEGORY_B", "AREA_E_CATEGORY_C",
                         "AREA_E_CATEGORY_D", "AREA_E_CATEGORY_E", "AREA_E_CATEGORY_F",
                         "AREA_E_CATEGORY_G", "AREA_E_CATEGORY_H", "AREA_E_CATEGORY_I", 
                         "AREA_E_CATEGORY_J",

                         "AREA_F_CATEGORY_A", "AREA_F_CATEGORY_B", "AREA_F_CATEGORY_C",
                         "AREA_F_CATEGORY_D", "AREA_F_CATEGORY_E", "AREA_F_CATEGORY_F",
                         "AREA_F_CATEGORY_G", "AREA_F_CATEGORY_H", "AREA_F_CATEGORY_I",
                         "AREA_F_CATEGORY_J",

                         "AREA_G_CATEGORY_A", "AREA_G_CATEGORY_B", "AREA_G_CATEGORY_C",
                         "AREA_G_CATEGORY_D", "AREA_G_CATEGORY_E", "AREA_G_CATEGORY_F",
                         "AREA_G_CATEGORY_G", "AREA_G_CATEGORY_H", "AREA_G_CATEGORY_I",
                         "AREA_G_CATEGORY_J",

                         "AREA_H_CATEGORY_A", "AREA_H_CATEGORY_B", "AREA_H_CATEGORY_C",
                         "AREA_H_CATEGORY_D", "AREA_H_CATEGORY_E", "AREA_H_CATEGORY_F",
                         "AREA_H_CATEGORY_G", "AREA_H_CATEGORY_H", "AREA_H_CATEGORY_I",
                         "AREA_H_CATEGORY_J",

                         "AREA_I_CATEGORY_A", "AREA_I_CATEGORY_B", "AREA_I_CATEGORY_C",
                         "AREA_I_CATEGORY_D", "AREA_I_CATEGORY_E", "AREA_I_CATEGORY_F",
                         "AREA_I_CATEGORY_G", "AREA_I_CATEGORY_H", "AREA_I_CATEGORY_I",
                         "AREA_I_CATEGORY_J",

                         "AREA_J_CATEGORY_A", "AREA_J_CATEGORY_B", "AREA_J_CATEGORY_C",
                         "AREA_J_CATEGORY_D", "AREA_J_CATEGORY_E", "AREA_J_CATEGORY_F",
                         "AREA_J_CATEGORY_G", "AREA_J_CATEGORY_H", "AREA_J_CATEGORY_I",
                         "AREA_J_CATEGORY_J"
                         )

$zone_number = 0
$category_number = 0
$id_number = 0

foreach ($AREA in $AREAS) {
    $padded_zone_number_start = "{0:d2}" -f $zone_number
    $padded_zone_number_end = "{0:d2}" -f $($zone_number+9)
    $zone_directory = New-item $root -Name "$padded_zone_number_start-$padded_zone_number_end $AREA" -ItemType Directory
    cd $zone_directory
    for ($i = 0; $i -lt 10; $i++) {
        $padded_category_number = "{0:d2}" -f $category_number
        $current_category = $categories_in_zone[$category_number]
        $category_name = $padded_category_number + "_" + $current_category
        New-item $zone_directory -Name $category_name -ItemType Directory
        $category_number++
    }
    cd ..
    $zone_number = $($zone_number+10) 
}
