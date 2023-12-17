function scr_P03() {
	// Soul Hit Reactions

	if global.P[3] > 0 {

	    scr_Default_Weapon_Stats();
		
		var pow = 10 * ((20 + global.soulloathing + global.soulloathingTemp) / 20)
		
		current_weapon_stats = {
			Shot_Spread: 0,
			Shot_Accuracy: 30,
			Shot_Count: 1,
			Shot_Sprite: "spr_Vindictive_Soul",
			Shot_Duplicate_Sprite: "spr_Vindictive_Soul",
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Image_Speed: 1,
			Shot_Speed: 3.5,
			Shot_Power: pow,
			Shot_Knockback: 0,
			Shot_Lifespan: 230,
			Shot_Pierce: 4,
			Shot_Life_Drain: 0.3,
			Shot_Size: 0.5,
			Shot_Face_Direction: 1,
			Shot_Homing_Type: 2,
			Shot_Homing_Range: 240,
			Shot_Extra_Hits: [1, 0, 0, 0, 0],
			Shot_Extra_Hit_Frequency: [95, 0, 0, 0, 0],
			Shot_Extra_Hit_Power: [pow, 0, 0, 0, 0]
		};
		
		if instance_exists(obj_Boss_Parent) {
			current_weapon_stats.Shot_Mouse = 0;
			current_weapon_stats.Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		}
		
		scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation();

	}


}
