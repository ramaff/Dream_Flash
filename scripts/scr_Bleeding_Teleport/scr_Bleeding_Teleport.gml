function scr_Bleeding_Teleport() {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Bleeding" {
		
		scr_Default_Weapon_Stats();
		
		current_weapon_stats = {
			Shot_Spread: 0,
			Shot_Accuracy: 10,
			Shot_Count: 1,
			Shot_Sprite: "spr_Bleeding_Blade_Shot",
			Shot_Type: "obj_Lesser_Soul_Shot"
		};
	
		//scr_Setup_Weapon_Stats(current_weapon_stats);
		//current_weapon_stats.

		current_weapon_stats.Shot_Phasing = 1;
		current_weapon_stats.Weapon_Soul_Maintain = 1;

		current_weapon_stats.Weapon_Melee = 1;

		current_weapon_stats.Shot_Speed = 0;
		current_weapon_stats.Shot_Power = 40;
		current_weapon_stats.Shot_Knockback = 10 + sqrt(Shot_Power);
		current_weapon_stats.Shot_Lifespan = 20;
		current_weapon_stats.Shot_Angle = 90 + point_direction(x,y,mouse_x,mouse_y);
		current_weapon_stats.Shot_Image_Rotation_Speed = -30;

		current_weapon_stats.Shot_Pierce = 20;

		current_weapon_stats.Shot_Shield_Type = 3;
		current_weapon_stats.Shot_Shield_Power = 8;
	
		current_weapon_stats.Shot_Bleed = 5;
		current_weapon_stats.Shot_Bleed_Time = 60;
		current_weapon_stats.Shot_Bleed_Ticks = 3;

		speed = 6;
		friction = 1;
		direction = point_direction(x,y,mouse_x,mouse_y);

		current_weapon_stats.Shot_Size = 0.3 + (sqrt(Shot_Power) / 20);

		scr_setup_weapon_stats(current_weapon_stats);

		scr_Shot_Creation();
	
		scr_Sound_Effect(sd_Sword_Slash);
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		
		if global.bosscount > 0 {
			obj_Soul_Parent.sstatecharge -= 6 * stdis;
		}
		
	}



}
