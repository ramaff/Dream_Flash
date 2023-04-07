function scr_Ascending_Soul_Teleport() {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Ascending" {
		
		var xxx = 0;
		var yyy = 0;
		
		scr_Disk_Effect(20, 0.5, c_yellow);
		scr_Disk_Effect(20, 0.9, c_white);
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		
		var soultar = id;
		with(obj_Bullet_Parent) {
	        if distance_to_object(other) <= (150) {
				var poww = 20 * global.soulstatepower * (1 + global.teleportboost);
				if bulletpower <= poww {
					xxx = x;
					yyy = y;
					repeat(3) {
						with instance_create(x,y,obj_Essence_Suck) {
			                target = soultar;
							direction = random(360)
							speed = 4 + random(4);
			            }
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
