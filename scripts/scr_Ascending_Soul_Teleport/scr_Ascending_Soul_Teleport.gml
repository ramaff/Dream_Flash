function scr_Ascending_Soul_Teleport() {
	// Location Soul Teleport

	if obj_Soul_Parent.scurrentstate = "Ascending" {
		
		var xxx = 0;
		var yyy = 0;
		
		scr_Disk_Effect(20, 0.5, c_yellow);
		scr_Disk_Effect(20, 0.9, c_white);
		
		var stdis = ((((1 - (global.teleportenergyconservation / 50)) / global.soulstatedrainslow) / global.soulstateteleportfactor) / global.teleportdelayconservationfactor);
		var poww = 20 * global.soulstatepower * (1 + global.teleportboost);
		var _range = sqrt(poww * 1200)
		
		scr_Disk_Effect(40, _range / 250, c_yellow);
		scr_Disk_Effect(40, _range / 200, c_yellow);
		
		var soultar = id;
		with(obj_Bullet_Parent) {
	        if distance_to_object(other) <= (_range) {
				if bulletpower <= poww {
					xxx = x;
					yyy = y;
					scr_Disk_Effect(30, 0.6, c_yellow)
					repeat(2) {
						with instance_create(x,y,obj_Ascended_Suck) {
			                target = soultar;
							direction = random(360)
							speed = 2 + random(2);
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
