function scr_Bleeding_Teleport() {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Bleeding" {
		
		current_weapon_stats = scr_Setup_Default_Shot_Stats()
		
		current_weapon_stats.Shot_Spread = 0;
		current_weapon_stats.Shot_Accuracy = 10;
		current_weapon_stats.Shot_Count = 1;
		current_weapon_stats.Shot_Sprite = "spr_Bleeding_Blade_Shot"
		current_weapon_stats.Shot_Type = "obj_Lesser_Soul_Shot"

		current_weapon_stats.Shot_Phasing = 1;
		current_weapon_stats.Shot_Soul_Maintain = 1;

		current_weapon_stats.Weapon_Melee = true;

		current_weapon_stats.Shot_Speed = 0;
		current_weapon_stats.Shot_Power = 40;
		current_weapon_stats.Shot_Knock_Back = 10 + sqrt(current_weapon_stats.Shot_Power);
		current_weapon_stats.Shot_Life_Span = 60;
		current_weapon_stats.Shot_Angle = 90 + point_direction(x,y,mouse_x,mouse_y);
		current_weapon_stats.Shot_Image_Rotation_Speed = -15;
		
		current_weapon_stats.Shot_After_Images = 1;

		current_weapon_stats.Shot_Pierce = 20;

		current_weapon_stats.Shot_Shield_Type = 3;
		current_weapon_stats.Shot_Shield_Power = 8;
	
		current_weapon_stats.Shot_Bleed = 5;
		current_weapon_stats.Shot_Bleed_Time = 60;
		current_weapon_stats.Shot_Bleed_Ticks = 3;

		speed = 6;
		friction = 1;
		direction = point_direction(x,y,mouse_x,mouse_y);

		current_weapon_stats.Shot_Size = 0.15 + (sqrt(current_weapon_stats.Shot_Power) / 50);

		//current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);

		scr_Shot_Creation(current_weapon_stats);
		
		current_weapon_stats.Shot_Angle = current_weapon_stats.Shot_Angle + 180;
		
		//current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);

		scr_Shot_Creation(current_weapon_stats);
	
		scr_Sound_Effect(sd_Sword_Slash);
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		
		if global.bosscount > 0 {
			obj_Soul_Parent.sstatecharge -= 6 * stdis;
		}
		
	}



}
