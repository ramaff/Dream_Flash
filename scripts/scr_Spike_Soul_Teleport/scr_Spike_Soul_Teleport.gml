function scr_Spike_Soul_Teleport(_xstar, _ystar) {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Spike" {
		
		var dur = 10;
		var dis = 900;
		var ang = point_direction(_xstar,_ystar, obj_Astral_Indicator.x, obj_Astral_Indicator.y);
		
		var angadd = 0
		
		repeat(7) {
			dis -= 120;
			repeat(4) {
				scr_Spike_Shot_Teleport_Use(dis, ang + angadd);
				
				angadd += 90;
			}
		}
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		
		if global.bosscount > 0 {
			obj_Soul_Parent.sstatecharge -= 10 * stdis;
		}
	}
}
