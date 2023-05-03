function scr_W02() {
	// Teleport After Position Change

	if global.W[02] > 0 {

	    scr_Default_Weapon_Stats();
		
		current_weapon_stats = {
			Shot_Spread: 30,
			Shot_Accuracy: 15,
			Shot_Count: 7,
			Shot_Sprite: "spr_Warp_Shot",
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Speed: 5.5,
			Shot_Power: (4 + 8 * global.W[02]) * (1 + global.teleportboost),
			Shot_Knockback: 10,
			Shot_Lifespan: 60,
			Shot_Pierce: 1,
			Shot_Point_Angle: 1,
			Shot_Size: 0.5
		};
		
		if instance_exists(obj_Boss_Parent) {
			current_weapon_stats.Shot_Mouse = 0;
			current_weapon_stats.Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		}
		
		scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation();
		
		current_weapon_stats.Shot_Count = 4
		current_weapon_stats.Shot_Speed = 7.5
		
		scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation();
		
		/*
    
	    Shot_Spread += 30;
	    Shot_Accuracy += 10;
	    Shot_Count += 6;
    
	    Shot_Sprite = spr_Warp_Shot;
	    Shot_Type = obj_Lesser_Soul_Shot;
    
	    Shot_Speed = 5;
	    Shot_Power = (4 + 8 * global.W[02]) * (1 + global.teleportboost);
	    Shot_Knockback = 10;
	    Shot_Lifespan = 100;
		Shot_Mouse = 0;
	
		Shot_Size = 0.5;
		Shot_Point_Angle = 1;
		if instance_exists(obj_Boss_Parent) {
			Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		} else {
			Shot_Direction = point_direction(xstar,ystar,mouse_x,mouse_y);
		}
    
	    scr_Shot_Creation();
	
	    Shot_Count = 4;
		Shot_Speed = 6.5;

		scr_Shot_Creation();
		*/

	}


}
