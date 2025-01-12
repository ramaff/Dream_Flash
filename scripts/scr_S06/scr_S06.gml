function scr_S06() {
	// Soul Hit Reactions

	if global.S[6] > 0 {

	    scr_Default_Weapon_Stats();
		var pow = 2 + 4 * global.S[6]
		
		current_weapon_stats = {
			Shot_Spread: 0,
			Shot_Accuracy: 360,
			Shot_Count: 12,
			Shot_Sprite: "spr_Magic_Bubble_Shot",
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Speed: 3.5,
			Shot_Power: pow,
			Shot_Knock_Back: 0,
			Shot_Life_Span: 230,
			Shot_Pierce: 2,
			Shot_Point_Angle: 1,
			Shot_Size: 0.4,
			Weapon_Vomit: 1,
			Weapon_Vomit_Min_Speed: 0.7,
			Weapon_Vomit_Max_Speed: 1.4,
			Weapon_Vomit_Min_Life: 0.5,
			Weapon_Vomit_Max_Life: 1,
			Shot_Friction: 0.02,
			Shot_Min_Speed: 0.33,
			Shot_Homing_Type: 1,
			Shot_Homing_Range: 120,
			Shot_Shield_Type: 1,
			Shot_Shield_Power: pow * 1.5
		};
		
		if hitType = "Boss" and instance_exists(obj_Boss_Parent) {
			current_weapon_stats.Shot_Count = 6;
			current_weapon_stats.Shot_Mouse = 0;
			current_weapon_stats.Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		}
		
		current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation();

	}


}
