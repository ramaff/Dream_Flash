function scr_Extra_Shot_Stats() {
	if shot_stats.Shot_Frames > 0 {
		shot_stats.Shot_Frame = irandom(shot_stats.Shot_Frames)	
	}
	
	y -= shot_stats.Shot_Height;
	
	if shot_stats.Shot_After_Images > 0 {
		alarm[8] = 10;	
	}
	
	shot_stats = scr_Setup_Shot_Stats_Asset(shot_stats);
	
	//Print_DF(shot_stats)

	var shotaddedpow = ((10 + other.spowerfactor + other.sattackfactorbuffamount) / 10) * other.spower / 10 * scr_Class_Stat_Damage_Multiplier();
	
	shot_stats.Shot_Follow_Origin = other.id;

	image_angle = shot_stats.Shot_Angle;
	image_index = shot_stats.Shot_Frame;
	image_speed = shot_stats.Shot_Image_Speed;
	image_alpha = shot_stats.Shot_Alpha;
	
	if shot_stats.Shot_Angles > -1 {
		image_angle = random(shot_stats.Shot_Angles)	
	}

	if shot_stats.Shot_Point_Angle = 1 {
		image_angle = direction;
	}

	target = noone;
	otarget = noone;

	if shot_stats.Shot_Orbital_Type > 0 {
	    target = other;
		otarget = other.id;
		
		if shot_stats.Shot_Orbital_Angle = -1 {
			shot_stats.Shot_Orbital_Angle = point_direction(x,y,mouse_x,mouse_y);
			shot_stats.Shot_Orbital_Angle += other.Shot_Current_Count * (360 / shot_stats.Shot_Count)
		}
		shot_stats.Shot_Center_X = other.x;
		shot_stats.Shot_Center_Y = other.y;
		//speed = 0;
	}
	
	shot_stats.Shot_Crit_Chance += other.scritaddchance;
	shot_stats.Shot_Crit_Multiple += other.scritadd;
	
	shot_stats.Shot_Impact_Power_Level = shot_stats.Shot_Impact_Power;
	shot_stats.Shot_Pierce += other.sshotpierce;
	shot_stats.Shot_Armour_Pierce += other.sarmourpierce;
	shot_stats.Shot_Chain_Power = (shot_stats.Shot_Chain_Power + other.spoweradd) * shotaddedpow;
	shot_stats.Shot_Impact_Power = (shot_stats.Shot_Impact_Power + other.spoweradd) * shotaddedpow;
	
	shot_stats.Shot_Shield_Power = (shot_stats.Shot_Shield_Power + other.spoweradd) * shotaddedpow;
	shot_stats.Shot_Rebound_Power = (shot_stats.Shot_Rebound_Power + other.spoweradd) * shotaddedpow;
	shot_stats.Shot_Poison = shot_stats.Shot_Poison * shotaddedpow;

	if scr_Chance(1 / shot_stats.Shot_Bleed_Chance) {
		shot_stats.Shot_Bleed = shot_stats.Shot_Bleed * shotaddedpow;
	}
	
	shot_stats.Shot_Fire = shot_stats.Shot_Fire * shotaddedpow;
	if scr_Chance(1 / shot_stats.Shot_Freeze_Chance) {
		shot_stats.Shot_Freeze_Type = shot_stats.Shot_Freeze_Type;
	}
	
	shot_stats.Shot_Accuracy = shot_stats.Shot_Accuracy / global.soulaccuracy;
	
	shot_stats.Shot_Init_Speed = shot_stats.Shot_Speed;

	scr_State_Weapon_Mod();
	
	if shot_stats.Shot_Origin = obj_Soul_Parent {
		scr_A06();
		
		scr_E06();
		scr_E07();
		scr_U01();
		scr_U05();
	
		scr_P06();
		scr_P07();
	
		//scr_U08();
		scr_Q02();
		scr_Q04();
		
		scr_U09();
		
		scr_OA04();
		scr_OA06();
		
		if global.XA[2] > 0 {
			scr_XA02_Shot_Mod();	
		}
		scr_XA03_Shot_Mod();
		scr_XA04_Shot_Mod();
		
		if global.XC[2] > 0 {
			scr_XC02_Shot_Mod();
		}
		
		scr_A07_Setup();
		
	}
	
	scr_XC06_Setup();
	
	shot_stats.Shot_Size_Max = shot_stats.Shot_Size;

	scr_Assign_Shot_Scripts();
	
	if shot_stats.Shot_Origin = obj_Soul_Parent {
		scr_V08();
	}
		

}
