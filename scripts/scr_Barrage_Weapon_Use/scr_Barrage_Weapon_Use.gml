function scr_Barrage_Weapon_Use(cWP) {

	current_weapon_stats = variable_struct_get(global.weapon_stats, string(cWP))
	scr_Default_Weapon_Stats();
	scr_Setup_Weapon_Stats();
	
	if Shot_Repetition[bi] >= 1 {
		Shot_Direction = Shot_Repetition_Direction[bi];
	}
	if Shot_Repetition_Forward_Interval[bi] > 0 {
		var len = (Shot_Repetition_Max[bi] - Shot_Repetition[bi]) * Shot_Repetition_Forward_Interval[bi];
		Shot_XX = lengthdir_x(len,Shot_Direction);
		Shot_YY = lengthdir_y(len,Shot_Direction);
	}
	if cWP = 403 {
		Shot_Spread += Shot_Spread * (Shot_Repetition_Max[bi] - Shot_Repetition[bi]);
	}
	if cWP = 211 {
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
	scr_Soul_Attack_Think();
}
