function scr_Beast_Soul_Teleport(_xstar, _ystar, _xx, _yy) {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Beast" {
		
		var dur = 10;
		var dis = point_distance(_xstar, _ystar, _xx, _yy);
		var ang = point_direction(_xstar, _ystar, _xx, _yy);
		
		var _count = 1 + floor((dis / 150))
		
		repeat(_count) {
		    scr_Beast_Maw_Teleport_Use(dis, ang);
			dis -= 150;
		}
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		
		if global.bosscount > 0 {
			obj_Soul_Parent.sstatecharge -= 10 * stdis;
		}
	}

}
