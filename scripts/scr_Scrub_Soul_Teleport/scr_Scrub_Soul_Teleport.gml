function scr_Scrub_Soul_Teleport() {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Scrub" {
		
		var dur = 10;
		var dis = point_distance(x,y, mouse_x, mouse_y);
		var ang = point_direction(x,y, mouse_x, mouse_y);
		
		var dismult = 1;
		
		repeat(15) {
		    scr_Scrub_Soul_Teleport_Use(dis / 15 * dismult, ang);
			dismult++;
		}
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		
		if global.bosscount > 0 {
			obj_Soul_Parent.sstatecharge -= 7 * stdis;
		}
	}

}
