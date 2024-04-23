function scr_Snake_Soul_Teleport() {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Snake" {
		
		var dur = 4;
		var dis = point_distance(x,y, mouse_x, mouse_y);
		var ang = point_direction(x,y, mouse_x, mouse_y);
		
		repeat(3) {
		    with instance_create(x + lengthdir_x(dis / 30 * dur, ang),y + lengthdir_y(dis / 30 * dur, ang),obj_Dream_Glitch) {
				scr_Soul_Utility_Setup();
				sprite_index = other.sprite_index;
				size = other.size;
				image_xscale = size;
				image_yscale = abs(size);
			
				alarm[0] = (dur + 40) * global.soulstateformboost;
			}
			dur += 10;
		}
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		
		if global.bosscount > 0 {
			obj_Soul_Parent.sstatecharge -= 10 * stdis;
		}
	
	}

}
