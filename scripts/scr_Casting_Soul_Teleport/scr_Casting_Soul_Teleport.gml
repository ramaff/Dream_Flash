function scr_Casting_Soul_Teleport() {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Casting" {
		
		var xxx = 0;
		var yyy = 0;
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		
		with(obj_Bullet_Parent) {
	        if distance_to_object(other) <= (150) {
				var poww = 20 * global.soulstatepower * (1 + global.teleportboost);
				if bulletpower <= poww {
					xxx = x;
					yyy = y;
					with(other) {
						scr_Casting_Teleport_Shot(xxx,yyy);
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
