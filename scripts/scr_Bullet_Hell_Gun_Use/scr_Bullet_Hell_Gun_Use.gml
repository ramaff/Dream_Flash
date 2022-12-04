function scr_Bullet_Hell_Gun_Use(barrage) {
	
	/*
	
	// NOTE THIS WEAPON Has some hardcoded barrage elements, 
	since the amount of setting up required here would be too annoying/messy
	
	*/
	
	scr_Default_Weapon_Stats();

	Shot_Spread += 15;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Bullet_Hell_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Speed = 10;
	Shot_Power = 10;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Size = 0.45;
	
	if barrage = true {
	
		var fval = 0;
	
		for(bi = 0; bi < 9; bi++) {
			if Shot_Repetition[bi] <= 0 {
				Shot_Repetition[bi] = 6;
				Shot_Repetition_Type[bi] = "Bullet Hell";
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
	
	if Shot_Repetition[bi] = 1 {
		Shot_Default_Count[bi] = 1;
		Shot_Power = 15;
		
		Shot_Burst_Type = 1;
		Shot_Burst_Amount = 6;
		Shot_Burst_Power = 7.5;
		
		Weapon_Split_Visible = 1;
		Weapon_Split_Hit_Again = 1;
		
		Shot_Sprite = spr_Bullet_Hell_Big_Shot;
		Shot_Duplicate_Sprite = spr_Bullet_Hell_Shot;
	}
	
	//scr_Bullet_Hell_Use_Helper

	scr_Shot_Creation();

}
