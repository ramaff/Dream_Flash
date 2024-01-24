for (bi = 0; bi < 9; bi++) {
	if Shot_Repetition[bi] > 0 {
		if Shot_Barrage_Speed[bi] < 1 {
		    Shot_Barrage_Speed[bi] = 1;
		}
		alarm[11] = Shot_Barrage_Speed[bi];
		if Shot_Repetition_Forward_Interval[bi] > 0 {
			var len = (Shot_Repetition_Max[bi] - Shot_Repetition[bi]) * Shot_Repetition_Forward_Interval[bi];
			//Shot_XX = lengthdir_x(len,Shot_Direction);
			//Shot_YY = lengthdir_y(len,Shot_Direction);
			Shot_Forward_Amount = len;
		}
		
		current_weapon_stats = Shot_Repetition_Stats[bi]
		
		scr_Setup_Weapon_Stats()
		
		/*if Shot_Repetition_Type[bi] = "Bullet Hell" {
			//scr_Bullet_Hell_Use_Helper();	
			//scr_Bullet_Hell_Gun_Use(false);
			scr_Barrage_Weapon_Use(211);
		}
		if Shot_Repetition_Type[bi] = "Hyper Essence" {
			//scr_Hyper_Essence_Shot(false);
			scr_Barrage_Weapon_Use(13);
		}
		if Shot_Repetition_Type[bi] = "Laser Barrage" {
			//scr_Laser_Barrage_Use(false);
			scr_Barrage_Weapon_Use(403);
		}
		if Shot_Repetition_Type[bi] = "Rising Spikes" {
			//scr_Rising_Spikes_Use(false);
			scr_Barrage_Weapon_Use(16);
		} */
		if Shot_Repetition_Type[bi] = "Stubborn" {
			//current_weapon_stats = Shot_Repetition_Stats[bi]
			
			Shot_Mouse = 0;
			Shot_Count = Shot_Default_Count[bi];
			scr_Shot_Creation();
		} else {
			Shot_Count = Shot_Default_Count[bi];
			
			if Shot_Repetition[bi] >= 1 {
				Shot_Direction = Shot_Repetition_Direction[bi];
			}
			if Shot_Repetition_Forward_Interval[bi] > 0 {
				var len = (Shot_Repetition_Max[bi] - Shot_Repetition[bi]) * Shot_Repetition_Forward_Interval[bi];
				
				Shot_Forward_Amount = len;
				//Shot_Forward = true;
				//var _dir = Shot_Direction;
				//Shot_XX = lengthdir_x(len,_dir);
				//Shot_YY = lengthdir_y(len,_dir);
			}
			if Shot_Repetition_Type[bi] = "Laser Barrage" {
				Shot_Spread += Shot_Spread * (Shot_Repetition_Max[bi] - Shot_Repetition[bi]);
			}
			if Shot_Repetition_Type[bi] = "Bullet Hell" {
				if Shot_Repetition[bi] = 1 {
					Shot_Default_Count[bi] = 1;
					Shot_Power = Shot_Power * 1.5;
		
					Shot_Burst_Type = 1;
					Shot_Burst_Amount = 6;
					Shot_Burst_Power = Shot_Power * 0.5;
		
					Weapon_Split_Visible = 1;
					Weapon_Split_Hit_Again = 1;
		
					Shot_Sprite = spr_Bullet_Hell_Big_Shot;
					Shot_Duplicate_Sprite = spr_Bullet_Hell_Shot;
				}	
			}
			
			
			scr_Shot_Creation();
		}
		
		Shot_Repetition[bi]--;
		
	}

}