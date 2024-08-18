function scr_Weapon_Pickup() {
	emptyslot = 0;
	emptynumber = 0;

	weapUp = 0;
	
	var _i = 0;

	// upgrade weapon if its the same as any of them
	for (_i = 0; _i < 5; _i++) {
	    if (Soul_Weapons_Control.weapon[_i].weapon_id = itemindex) {
	        weapUp = 1;
	    }
	}

	// upgrade weapon if its the same as any of them
	for (_i = 0; _i < global.weaponslots; _i++) {
	    if (Soul_Weapons_Control.weapon[_i].weapon_id == itemindex) {
	        scr_Weapon_Stat_Add();
	        instance_destroy();
	        global.floor[global.currentroom,itemData] = 0;
	        exit;
	    }
	}

	for (_i = 0; _i < global.weaponslots; _i++) {
	    if emptyslot = 0
	    if (Soul_Weapons_Control.weapon[_i].weapon_id = 0) {
	        emptyslot = 1;
	        emptynumber = _i;
	    }
	}

	if emptyslot = 1 {
	    Soul_Weapons_Control.weapon[emptynumber].weapon_id = itemindex;
	    scr_Weapon_Stat_Add();
		Print_DF(itemindex);
		Print_DF(string(Soul_Weapons_Control.weapon[emptynumber]))
		while(global.currentweapon != itemindex) {
			Print_DF(string(Soul_Weapons_Control.weapon))
			scr_Weapon_Switch(1);	
		}
	    instance_destroy();
	    global.floor[global.currentroom,itemData] = 0;
	} else {
	    for (_i = 0; _i < global.weaponslots; _i++) {
	        if (_i = 0) {
	            scr_Weapon_Item_Change(_i);
	            Soul_Weapons_Control.weapon[_i].weapon_id = itemindex;
	            scr_Weapon_Stat_Add();
	            instance_destroy();
	        }
	    }
	}
	



}
