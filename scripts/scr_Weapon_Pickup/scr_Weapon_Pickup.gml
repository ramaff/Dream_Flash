function scr_Weapon_Pickup() {
	emptyslot = 0;
	emptynumber = 0;

	weapUp = 0;

	for (i = 0; i < 5; i++) {
	    if (Soul_Weapons_Control.weapon[i,2] = itemindex) {
	        weapUp = 1;
	    }
	}

	for (i = 0; i < global.weaponslots; i++) {
	    if (Soul_Weapons_Control.weapon[i,2] = itemindex) {
	        scr_Weapon_Stat_Add();
	        instance_destroy();
	        global.floor[global.currentroom,itemData] = 0;
	        exit;
	    }
	}

	for (i = 0; i < global.weaponslots; i++) {
	    if emptyslot = 0
	    if (Soul_Weapons_Control.weapon[i,2] = 0) {
	        emptyslot = 1;
	        emptynumber = i;
	    }
	}

	if emptyslot = 1 {
	    Soul_Weapons_Control.weapon[emptynumber,2] = itemindex;
	    scr_Weapon_Stat_Add();
	    instance_destroy();
	    global.floor[global.currentroom,itemData] = 0;
	} else {
	    for (i = 0; i < global.weaponslots; i++) {
	        if (Soul_Weapons_Control.weapon[i,1] = 0) {
	            scr_Weapon_Item_Change();
	            Soul_Weapons_Control.weapon[i,2] = itemindex;
	            scr_Weapon_Stat_Add();
	            instance_destroy();
	        }
	    }
	}



}
