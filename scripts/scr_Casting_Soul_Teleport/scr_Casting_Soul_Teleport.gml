function scr_Casting_Soul_Teleport() {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Casting" {
		
		var xxx = 0;
		var yyy = 0;
		
		scr_Disk_Effect(40, 1, c_fuchsia);
		scr_Disk_Effect(40, 1.3, c_fuchsia);
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		
		with(obj_Bullet_Parent) {
			var _distance = distance_to_object(other)
	        if _distance <= (200) {
				scr_Disk_Effect(30, 0.4, c_fuchsia)
				var poww = 20 * global.soulstatepower * (1 + global.teleportboost);
				if bulletpower <= poww {
					xxx = x;
					yyy = y;
					with(other) {
						scr_Casting_Teleport_Shot(xxx,yyy,_distance);
					}
					instance_destroy();	
				} else {
					bulletpower -= poww;
					bulletsize = (bulletpower / bulletpowermax);
				}
				if global.bosscount > 0 {
					obj_Soul_Parent.sstatecharge -= 0.5 * stdis;
				}
			}
		}
	
	}
}
