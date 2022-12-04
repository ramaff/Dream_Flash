function scr_Beast_Soul_Teleport() {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Beast" {
		
		var dur = 10;
		var dis = point_distance(x,y, mouse_x, mouse_y) - 735;
		var ang = point_direction(x,y, mouse_x, mouse_y);
		
		repeat(9) {
		    scr_Beast_Maw_Teleport_Use(dis, ang);
			dis += 105;
		}
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		
		if global.bosscount > 0 {
			obj_Soul_Parent.sstatecharge -= 10 * stdis;
		}
	}

}
