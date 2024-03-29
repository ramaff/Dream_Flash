function scr_W04() {
	// Teleport Before Position Change

	if global.W[4] > 0 {
		
		scr_Default_Weapon_Stats();
		
		var poww = 15 + 50 * global.W[4] * (1 + global.teleportboost);
		
		current_weapon_stats = {
			Shot_Spread: 0,
			Shot_Accuracy: 20,
			Shot_Count: 1,
			Shot_Sprite: "spr_Warp_Bomb_Shot",
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Speed: 1,
			Shot_Power: poww,
			Shot_Knockback: 10,
			Shot_Life_Span: 60,
			Shot_Pierce: 1,
			Shot_Point_Angle: 0,
			Shot_Size: 0.5,
			Shot_Screen_Shake: 7,
			Shot_Impact_Type: 1,
			Shot_Impact_Size: 150,
			Shot_Impact_Power: poww,
			Shot_Homing_Type: 1,
			Shot_Homing_Range: 180
		};
		
		if instance_exists(obj_Boss_Parent) {
			current_weapon_stats.Shot_Mouse = 0;
			current_weapon_stats.Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		}
		
		current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation();

	}


}
