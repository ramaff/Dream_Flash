function scr_B08() {
	// Location Soul Step Event

	if global.soulNoShoot >= 24 {
		
		if (global.soulNoShoot + 24) mod 30 = 0 {
			if obj_Soul_Parent.shealth < obj_Soul_Parent.smaxhealth {
				scr_Heal_Soul(global.B[8]);
			} else {
				scr_Refresh_Soul(global.B[8] * 5);
			}
		}
	}



}
