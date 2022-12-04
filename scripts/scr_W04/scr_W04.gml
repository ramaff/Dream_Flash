function scr_W04() {
	// Teleport Before Position Change

	if global.W[4] > 0 {
		
		scr_Default_Weapon_Stats();

	    Shot_Spread += 0;
		Shot_Accuracy += 20;
		Shot_Count += 0;

		Shot_Sprite = spr_Warp_Bomb_Shot
		Shot_Type = obj_Lesser_Soul_Shot;

		Shot_Imaginary -= 1;
		Shot_Explosive += 1;

		Shot_Speed = 0;
		Shot_Power = 15 + 50 * global.W[4] * (1 + global.teleportboost);
		Shot_Knockback = 30;
		Shot_Lifespan = 60;
	
		Shot_Screen_Shake = 7;

		Shot_Impact_Type = 1;
		Shot_Impact_Size = 150;
		Shot_Impact_Power = Shot_Power;
		
		Shot_Homing_Type = 1;
		Shot_Homing_Range = 180;
	
		Shot_Size = 0.6;
		if instance_exists(obj_Boss_Parent) {
			Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		} else {
			Shot_Direction = point_direction(xstar,ystar,mouse_x,mouse_y);
		}
    
	    scr_Shot_Creation();

	}


}
