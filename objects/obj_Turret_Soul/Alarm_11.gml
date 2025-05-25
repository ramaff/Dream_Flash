for (bi = 0; bi < 9; bi++) {
	if Shot_Repetition[bi] > 0 {
		if Shot_Barrage_Speed[bi] < 1 {
		    Shot_Barrage_Speed[bi] = 1;
		}
		alarm[11] = Shot_Barrage_Speed[bi];
		if Shot_Repetition_Forward_Interval[bi] > 0 {
			var len = (Shot_Repetition_Max[bi] - Shot_Repetition[bi]) * Shot_Repetition_Forward_Interval[bi];
		}
		
		var Shot_Stats = Shot_Repetition_Stats[bi]
		
		Shot_Stats = scr_Setup_Weapon_Stats(Shot_Stats)
		
		Shot_Stats.Shot_Count = Shot_Default_Count[bi];
	
		if Shot_Repetition_Type[bi] = "Stubborn" {
			
			Shot_Stats.Shot_Mouse = 0;
			//Shot_Count = Shot_Default_Count[bi];
			
			var _minion = false
			if scr_Minion_Weapon(Shot_Stats.Weapon_Number) {
				_minion = true;	
			}
			
			scr_Weapon_Output(true, _minion, Shot_Stats)
		} else {
			//Shot_Count = Shot_Default_Count[bi];
			
			if Shot_Repetition[bi] >= 1 {
				Shot_Stats.Shot_Direction = Shot_Repetition_Direction[bi];
			}
			if Shot_Repetition_Forward_Interval[bi] > 0 {
				var len = (Shot_Repetition_Max[bi] - Shot_Repetition[bi]) * Shot_Repetition_Forward_Interval[bi];
				
				Shot_Stats.Shot_Forward_Amount = len;
			}
			if Shot_Repetition_Type[bi] = "Laser Barrage" {
				Shot_Stats.Shot_Spread += Shot_Stats.Shot_Spread * (Shot_Repetition_Max[bi] - Shot_Repetition[bi]);
			}
			if Shot_Repetition_Type[bi] = "Bullet Hell" {
				if Shot_Repetition[bi] = 1 {
					//Shot_Default_Count[bi] = 1;
					Shot_Stats.Shot_Power = Shot_Stats.Shot_Power * 1.5;
					
					if Shot_Stats.Shot_Burst_Stats = false {
						Shot_Stats.Shot_Burst_Stats = [{}]
					} else {
						array_push(Shot_Stats.Shot_Burst_Stats, {})	
					}
					
					var burstIndex = array_length(Shot_Stats.Shot_Burst_Stats) - 1;
					variable_struct_set(Shot_Stats.Shot_Burst_Stats[burstIndex], "Burst_Power", 0.5); 
					variable_struct_set(Shot_Stats.Shot_Burst_Stats[burstIndex], "Shot_Size", 0.45); 
					variable_struct_set(Shot_Stats.Shot_Burst_Stats[burstIndex], "Burst_Size", 1);
					variable_struct_set(Shot_Stats.Shot_Burst_Stats[burstIndex], "Burst_Speed", 1);
					variable_struct_set(Shot_Stats.Shot_Burst_Stats[burstIndex], "Burst_Life_Span", 0.5);
					variable_struct_set(Shot_Stats.Shot_Burst_Stats[burstIndex], "Amount", 6); 
					variable_struct_set(Shot_Stats.Shot_Burst_Stats[burstIndex], "Spread", 60);
		
					Shot_Stats.Weapon_Split_Visible = 1;
					Shot_Stats.Weapon_Split_Hit_Again = 1;
		
					Shot_Stats.Shot_Sprite = "spr_Bullet_Hell_Big_Shot";
					Shot_Stats.Shot_Burst_Stats[burstIndex].Shot_Type = Shot_Stats.Shot_Type;
					Shot_Stats.Shot_Burst_Stats[burstIndex].Shot_Sprite = "spr_Bullet_Hell_Shot";
				}	
			}
			
			scr_Weapon_Output(true, false, Shot_Stats)
			//scr_Shot_Creation();
		}
		
		Shot_Repetition[bi]--;
		
	}

}