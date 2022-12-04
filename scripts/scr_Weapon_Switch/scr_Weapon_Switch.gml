function scr_Weapon_Switch() {
	reverse = argument[0];

	scr_U03_Off();
	
	if instance_exists(obj_Soul_Parent) {
		obj_Soul_Parent.sWeaponWarmUp = 0;
	}

	//global.weaponslots = 4;

	if reverse = 0 {
	    for (i = 0; i < global.weaponslots; i++) {
	        weapon[i,1] += 1
	        if weapon[i,1] >= global.weaponslots
	        weapon[i,1] = 0
	    }
    
	    for (i = 0; i < global.weaponslots; i++) {
	        if (weapon[i,1] = 0) {
	            global.currentweapon = weapon[i,2];
	        }
	    }
	} else {
	    for (i = global.weaponslots - 1; i >= 0; i--) {
	        weapon[i,1] -= 1;
	        if weapon[i,1] < 0 {
	        weapon[i,1] = global.weaponslots - 1;
	        }
	        if weapon[i,1] >= global.weaponslots {
	        weapon[i,1] = 0;
			}
	    }
    
	    for (i = 0; i < global.weaponslots; i++) {
	        if (weapon[i,1] = 0) {
	            global.currentweapon = weapon[i,2];
	        }
	    }
	}

	if global.currentweapon = 0 {
	    scr_Weapon_Switch(reverse);
	}



}
