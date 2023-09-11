with(obj_Tri_Ghoul) {
    if id = other.bulletID {
        if other.bossPart = 1 {
           // ds_list_copy(hand1List, other.projectile_hits);
			hand1List = other.projectile_hits
            //ds_list_copy(hand2List, other.projectile_hits);
            //ds_list_copy(hand3List, other.projectile_hits);
        }
        if other.bossPart = 2 {
            //ds_list_copy(hand2List, other.projectile_hits);
			hand2List = other.projectile_hits
            //ds_list_copy(hand1List, other.projectile_hits);
            //ds_list_copy(hand3List, other.projectile_hits);
        }
        if other.bossPart = 3 {
            //ds_list_copy(hand3List, other.projectile_hits);
			hand3List = other.projectile_hits
            //ds_list_copy(hand2List, other.projectile_hits);
            //ds_list_copy(hand1List, other.projectile_hits);
        }
    }
}

//ds_list_destroy(projectile_hits);

