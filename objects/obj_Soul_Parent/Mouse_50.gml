if !(instance_exists(Tutorial_Control)) {
	
	

    if Charge_Hold = 0 {
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

