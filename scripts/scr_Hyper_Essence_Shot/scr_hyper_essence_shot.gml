function scr_Hyper_Essence_Shot(barrage) {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 20;
	Shot_Count += 0;

	Shot_Sprite = spr_Hyper_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 15;
	Shot_Power = 11;
	Shot_Knockback = 10;
	Shot_Lifespan = 60;

	Shot_Size = 0.45;
	
	Shot_Point_Angle = 1;

	/*
	Shot_Repetition = 6;
	Shot_Barrage_Speed = 3;
	alarm[11] = (Shot_Barrage_Speed);

	Shot_Default_Count = Shot_Count;
	*/
	if barrage = true {
		var fval = 0;
	
		for(bi = 0; bi < 9; bi++) {
			if Shot_Repetition[bi] <= 0 {
				Shot_Repetition[bi] = 6;
				Shot_Repetition_Type[bi] = "Hyper Essence";
				//Shot_Repetition_Max[bi] = 7;
				Shot_Barrage_Speed[bi] = 3;
				alarm[11] = (Shot_Barrage_Speed[bi]);

				Shot_Repetition_Forward_Interval[bi] = 0;
				Shot_Default_Count[bi] = Shot_Count;
		
				fval = bi;
				break;
			}
		}
		bi = fval;
	}

	scr_Shot_Creation();



}
