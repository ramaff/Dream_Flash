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
	
		if Shot_Repetition_Type[bi] = "Stubborn" {
			
			Shot_Mouse = 0;
			Shot_Count = Shot_Default_Count[bi];
			
			var _minion = false
			if scr_Minion_Weapon(current_weapon_stats.Weapon_Number) {
				_minion = true;	
			}
			
			scr_Weapon_Output(true, _minion)
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
			
			scr_Weapon_Output(true, false)
			//scr_Shot_Creation();
		}
		
		Shot_Repetition[bi]--;
		
	}

}