// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Soul Item Step

function scr_OA02(){

	if global.OA[2] > 0 {
		with(obj_Bullet_Parent) {
			if distance_to_object(other) <= (150) and scr_Chance(300 / max(1, global.P[8])) {
				var ddir = random(360);
				var sspd = 9 + random(4);
				var ssize = 0.4 + random(0.2);
				var llife = 10 + irandom(2);
				repeat(8) {
					with instance_create(x,y,obj_Item_Trail) {
						direction = ddir;
						speed = sspd;
						
						sprite_index = spr_Soul_Big_Bit;

						size = ssize
						image_xscale = size;
						image_yscale = size;
		
						life = llife;
						alarm[0] = life;
						alarm[1] = life / 2;
		
						depth = other.depth + 2;
					}
					ddir += 45;
				}
				var poww = 20;
				if bulletpower <= poww {
					var xxx = x;
					var yyy = y;
					with(other) {
						scr_Optimism_Shot(xxx,yyy);
					}
					instance_destroy();	
				} else {
					bulletpower -= poww;
					bulletsize = (bulletpower / bulletpowermax);
				}
			}
		}
	}
}