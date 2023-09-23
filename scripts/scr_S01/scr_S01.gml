function scr_S01() {
	// Soul Hit Reactions

	if global.S[1] > 0 {

	    scr_Default_Weapon_Stats();
		
		current_weapon_stats = {
			Shot_Spread: 36,
			Shot_Accuracy: 36,
			Shot_Count: 10,
			Shot_Sprite: "spr_Defensive_Shot",
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Speed: 8.5,
			Shot_Power: 5 + ((20 + global.soulparanoia + global.soulparanoiaTemp) / 2 * global.S[1]),
			Shot_Knockback: 15,
			Shot_Lifespan: 100,
			Shot_Pierce: 2,
			Shot_Point_Angle: 1,
			Shot_Size: 0.5
		};
		
		if hitType = "Boss" and instance_exists(obj_Boss_Parent) {
			current_weapon_stats.Shot_Count = 5;
			current_weapon_stats.Shot_Mouse = 0;
			current_weapon_stats.Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		}
		
		scr_setup_weapon_stats(current_weapon_stats);
		scr_Shot_Creation();

	}


}
