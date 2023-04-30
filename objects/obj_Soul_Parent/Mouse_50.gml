if !(instance_exists(Tutorial_Control)) {
	
	var reverie = false;
	if global.F[5] >= 1 {
		reverie = scr_Chance(10 / global.F[5]);
	}

    if Charge_Hold = 0 and !scr_State_Active_Check("Ascending", reverie) {
        //ds_list_clear(global.gembeam_hits);
		soulshotmouse = 1;
		soulshotdirection = 0;
        scr_Weapon_Use();
    } else {
		soulshotmouse = 1;
		soulshotdirection = 0;
        scr_Charged_Hold();
    }
	
	//if mouse_check_button(mb_left) {
		scr_Soul_Attack_Think();
	//}
		scr_Mechanical_Turret_Spawns();

}

