
$racine = "C:\Users\l.baillargeon\racine"

$ZONES = @("ZONE-A", "ZONE-B", "ZONE-C", "ZONE-D", "ZONE-E", "ZONE-F", "ZONE-G", "ZONE-H", "ZONE-I", "ZONE-J")

$categorie_dans_zone = @("ZONE_A_CATEGORIE_A", "ZONE_A_CATEGORIE_B", "ZONE_A_CATEGORIE_C",
                         "ZONE_A_CATEGORIE_D", "ZONE_A_CATEGORIE_E", "ZONE_A_CATEGORIE_F",
                         "ZONE_A_CATEGORIE_G", "ZONE_A_CATEGORIE_H", "ZONE_A_CATEGORIE_I",
                         "ZONE_A_CATEGORIE_J",
                         
                         "ZONE_B_CATEGORIE_A", "ZONE_B_CATEGORIE_B", "ZONE_B_CATEGORIE_C",
                         "ZONE_B_CATEGORIE_D", "ZONE_B_CATEGORIE_E", "ZONE_B_CATEGORIE_F",
                         "ZONE_B_CATEGORIE_G", "ZONE_B_CATEGORIE_H", "ZONE_B_CATEGORIE_I",
                         "ZONE_B_CATEGORIE_J",
                         
                         "ZONE_C_CATEGORIE_A", "ZONE_C_CATEGORIE_B", "ZONE_C_CATEGORIE_C",
                         "ZONE_C_CATEGORIE_D", "ZONE_C_CATEGORIE_E", "ZONE_C_CATEGORIE_F",
                         "ZONE_C_CATEGORIE_G", "ZONE_C_CATEGORIE_H", "ZONE_C_CATEGORIE_I",
                         "ZONE_C_CATEGORIE_J",
                         
                         "ZONE_D_CATEGORIE_A", "ZONE_D_CATEGORIE_B", "ZONE_D_CATEGORIE_C",
                         "ZONE_D_CATEGORIE_D", "ZONE_D_CATEGORIE_E", "ZONE_D_CATEGORIE_F",
                         "ZONE_D_CATEGORIE_G", "ZONE_D_CATEGORIE_H", "ZONE_D_CATEGORIE_I",
                         "ZONE_D_CATEGORIE_J",

                         "ZONE_E_CATEGORIE_A", "ZONE_E_CATEGORIE_B", "ZONE_E_CATEGORIE_C",
                         "ZONE_E_CATEGORIE_D", "ZONE_E_CATEGORIE_E", "ZONE_E_CATEGORIE_F",
                         "ZONE_E_CATEGORIE_G", "ZONE_E_CATEGORIE_H", "ZONE_E_CATEGORIE_I", 
                         "ZONE_E_CATEGORIE_J",

                         "ZONE_F_CATEGORIE_A", "ZONE_F_CATEGORIE_B", "ZONE_F_CATEGORIE_C",
                         "ZONE_F_CATEGORIE_D", "ZONE_F_CATEGORIE_E", "ZONE_F_CATEGORIE_F",
                         "ZONE_F_CATEGORIE_G", "ZONE_F_CATEGORIE_H", "ZONE_F_CATEGORIE_I",
                         "ZONE_F_CATEGORIE_J",

                         "ZONE_G_CATEGORIE_A", "ZONE_G_CATEGORIE_B", "ZONE_G_CATEGORIE_C",
                         "ZONE_G_CATEGORIE_D", "ZONE_G_CATEGORIE_E", "ZONE_G_CATEGORIE_F",
                         "ZONE_G_CATEGORIE_G", "ZONE_G_CATEGORIE_H", "ZONE_G_CATEGORIE_I",
                         "ZONE_G_CATEGORIE_J",

                         "ZONE_H_CATEGORIE_A", "ZONE_H_CATEGORIE_B", "ZONE_H_CATEGORIE_C",
                         "ZONE_H_CATEGORIE_D", "ZONE_H_CATEGORIE_E", "ZONE_H_CATEGORIE_F",
                         "ZONE_H_CATEGORIE_G", "ZONE_H_CATEGORIE_H", "ZONE_H_CATEGORIE_I",
                         "ZONE_H_CATEGORIE_J",

                         "ZONE_I_CATEGORIE_A", "ZONE_I_CATEGORIE_B", "ZONE_I_CATEGORIE_C",
                         "ZONE_I_CATEGORIE_D", "ZONE_I_CATEGORIE_E", "ZONE_I_CATEGORIE_F",
                         "ZONE_I_CATEGORIE_G", "ZONE_I_CATEGORIE_H", "ZONE_I_CATEGORIE_I",
                         "ZONE_I_CATEGORIE_J",

                         "ZONE_J_CATEGORIE_A", "ZONE_J_CATEGORIE_B", "ZONE_J_CATEGORIE_C",
                         "ZONE_J_CATEGORIE_D", "ZONE_J_CATEGORIE_E", "ZONE_J_CATEGORIE_F",
                         "ZONE_J_CATEGORIE_G", "ZONE_J_CATEGORIE_H", "ZONE_J_CATEGORIE_I",
                         "ZONE_J_CATEGORIE_J"
                         )

$numero_de_zone = 0
$numero_de_categorie = 0
$id_number = 0

foreach ($ZONE in $ZONES) {
    $padded_numero_de_zone_debut = "{0:d2}" -f $numero_de_zone
    $padded_numero_de_zone_fin = "{0:d2}" -f $($numero_de_zone+9)
    $repertoire_zone = New-item $racine -Name "$padded_numero_de_zone_debut-$padded_numero_de_zone_fin $ZONE" -ItemType Directory
    cd $repertoire_zone
    for ($i = 0; $i -lt 10; $i++) {
        $padded_numero_de_categorie = "{0:d2}" -f $numero_de_categorie
        $categorie_en_cours = $categorie_dans_zone[$numero_de_categorie]
        $nom_de_categorie = $padded_numero_de_categorie + "_" + $categorie_en_cours
        #echo "repertoire zone est : $repertoire_zone"
        New-item $repertoire_zone -Name $nom_de_categorie -ItemType Directory
        $numero_de_categorie++
    }
    cd ..
    $numero_de_zone = $($numero_de_zone+10) 
}
