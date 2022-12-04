function scr_Rising_Spikes_Use(barrage) {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 10;
	Shot_Count += 0;

	Shot_Sprite = spr_Rising_Spike_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Speed = 0;
	Shot_Movement = 0;
	Shot_Power = 14;
	Shot_Knockback = 10;
	Shot_Lifespan = 15;

	Shot_Phasing = 1;
	Weapon_Melee = 1;

	Shot_Pierce += 99;

	Shot_Ground = 1;

	Shot_Direction = point_direction(x,y,mouse_x,mouse_y)

	Shot_XX = lengthdir_x(90,Shot_Direction);
	Shot_YY = lengthdir_y(90,Shot_Direction);

	Shot_Size = 0.5;
	Shot_Image_Speed = 1;
	
	if barrage = true {
		var fval = 0;
	
		for(bi = 0; bi < 9; bi++) {
			if Shot_Repetition[bi] <= 0 {
				Shot_Repetition[bi] = 5;
				Shot_Repetition_Type[bi] = "Rising Spikes";
				Shot_Repetition_Max[bi] = 7;
				Shot_Barrage_Speed[bi] = 1;
				alarm[11] = (Shot_Barrage_Speed[bi]);

				Shot_Repetition_Forward_Interval[bi] = 90;
				Shot_Default_Count[bi] = Shot_Count;
		
				fval = bi;
				break;
			}
		}
		bi = fval;
	}
	
	if Shot_Repetition_Forward_Interval[bi] > 0 and barrage = false {
		var len = (Shot_Repetition_Max[bi] - Shot_Repetition[bi]) * Shot_Repetition_Forward_Interval[bi];
		Shot_XX = lengthdir_x(len,Shot_Direction);
		Shot_YY = lengthdir_y(len,Shot_Direction);
	}
	
	scr_Shot_Creation();



}
