if !(instance_exists(Tutorial_Control)) {
	
	var reverie = false;
	if global.F[5] >= 1 {
		reverie = scr_Chance(10 / global.F[5]);
	}
	
	var _ascending = false
	if scr_State_Active_Check("Ascending", reverie) and global.currentweapon != 605 and (global.currentweapon < 500 || global.currentweapon > 600) {
		_ascending = true
	}
	if (global.currentweapon >= 500 || global.currentweapon < 600) {
		Charge_Hold = 0;	
	}
	
	if Charge_Hold = 0 and (scr_Charged_Weapon(global.currentweapon) || _ascending = true) {
		Charge_Speed = 0;
		Charge_Power = 0;
		Charge_Knockback = 0;
		Charge_Lifespan = 0;
		Charge_Time = 0;
		Charge_Hold = 0;
		Charge_Size = 0;

		scr_Charged_Use();
	}	

    if Charge_Hold = 0 and !_ascending {
        //ds_list_clear(global.gembeam_hits);
		soulshotmouse = 1;
		soulshotdirection = 0;
        scr_Weapon_Use();
    } else if Charge_Hold > 0 {
		soulshotmouse = 1;
		soulshotdirection = 0;
        scr_Charged_Hold();
    }
	
	//if mouse_check_button(mb_left) {
		scr_Soul_Attack_Think();
	//}
		scr_Mechanical_Turret_Spawns();

}

