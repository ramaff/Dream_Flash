if !(instance_exists(Tutorial_Control)) {
	
	var _ascending = scr_State_Active_Check("Ascending")
	if _ascending and global.currentweapon != 605 {
		_ascending = true
	} else {
		_ascending = false	
	}
	
	if scr_Minion_Weapon(global.currentweapon) {
		_ascending = false
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

    if (Charge_Hold = 0 and !_ascending) || scr_Minion_Weapon(global.currentweapon) {
        //ds_list_clear(global.gembeam_hits);
		//soulshotmouse = 1;
		//soulshotdirection = 0;
        scr_Weapon_Use();
    } else if Charge_Hold > 0 {
		//soulshotmouse = 1;
		//soulshotdirection = 0;
        scr_Charged_Hold();
    }
	
	//if mouse_check_button(mb_left) {
		scr_Soul_Attack_Think();
	//}
		scr_Mechanical_Turret_Spawns();

}

