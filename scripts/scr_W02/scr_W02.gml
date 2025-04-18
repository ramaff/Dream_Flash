function scr_W02(teleport_dir = point_direction(x,y,mouse_x,mouse_y)) {
	// Teleport After Position Change

	if global.W[02] > 0 {

	    current_weapon_stats = scr_Setup_Default_Shot_Stats();
		
		current_weapon_stats = {
			Shot_Spread: 30,
			Shot_Accuracy: 0,
			Shot_Count: 6,
			Shot_Sprite: "spr_Warp_Shot",
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Speed: 5.5,
			Shot_Power: (4 + 8 * global.W[02]) * (1 + global.teleportboost),
			Shot_Knock_Back: 10,
			Shot_Life_Span: 60,
			Shot_Pierce: 1,
			Shot_Point_Angle: 1,
			Shot_Size: 0.5,
			Shot_Mouse: 0,
			Shot_Direction: teleport_dir
		};
		
	
		
		if instance_exists(obj_Boss_Parent) {
			current_weapon_stats.Shot_Mouse = 0;
			var bossdir = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y)
			var modir = current_weapon_stats.Shot_Direction
			var trudir = modir + (angle_difference(bossdir, modir) / 2)
			current_weapon_stats.Shot_Direction = trudir;
		}
		
		
		
		current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation();
		
		current_weapon_stats.Shot_Count = 5
		current_weapon_stats.Shot_Speed = 7.5
		current_weapon_stats.Shot_Spread = 30

		scr_Shot_Creation();
		

	}


}
