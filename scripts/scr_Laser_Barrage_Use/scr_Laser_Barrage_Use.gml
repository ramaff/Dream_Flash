function scr_Laser_Barrage_Use(barrage) {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Laser_Bolt_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Energy += 1;

	Shot_Speed = 15;
	Shot_Power = 12;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Size = 0.45;
	Shot_Point_Angle = 1;

	/*
	Shot_Repetition = 9;
	Shot_Barrage_Speed = 4;
	alarm[11] = (Shot_Barrage_Speed - sdelayconservation) / sdelayconservationfactor / ((10 + global.Weap[403]) / 10);;

	Shot_Default_Count = Shot_Count;
	*/
	
	if barrage = true {
		var fval = 0;
	
		for(bi = 0; bi < 9; bi++) {
			if Shot_Repetition[bi] <= 0 {
				Shot_Repetition[bi] = 9;
				Shot_Repetition_Type[bi] = "Laser Barrage";
				//Shot_Repetition_Max[bi] = 7;
				Shot_Barrage_Speed[bi] = 4;
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
