function scr_V09_Add_old() {
	// Location: Extra Shot Stats

	if global.V[9] >= 1 {
	    Shot_Count = Shot_Count * 3;
		Shot_Count += global.V[9] - 1;
		
		Shot_Lobbing = 1;
		
		Weapon_Vomit = 1;
		Weapon_Vomit_Min_Speed = 0.75;
		Weapon_Vomit_Max_Speed = 1.5;
		Shot_Accuracy = Shot_Accuracy * 2;
		Shot_Accuracy += 20;
	}



}
