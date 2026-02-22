// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Soul Item Step

function scr_Optimism_Parts() {
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
}

function scr_OA02(){

	if global.roomtime mod 5 = 0 {
		var _odds = 30 / max(1, global.OA[2])

		with(obj_Bullet_Parent) {
			if distance_to_object(other) <= (160) and scr_Chance(_odds) {
				scr_Optimism_Parts()
				var poww = 20;
				if bulletpower <= poww {
					var xxx = x;
					var yyy = y;
					var _dam = bulletpower
					with(other) {
						scr_Optimism_Shot(xxx,yyy, _dam);
					}
					instance_destroy();	
				} else {
					bulletpower -= poww;
					bulletsize = (bulletpower / bulletpowermax);
				}
			}
		}
		with(obj_bullet_parent_v2) {
			if distance_to_object(other) <= (160) and scr_Chance(_odds) {
				scr_Optimism_Parts()
				var poww = 20;
				if bullet_stats.bullet_power <= poww {
					var xxx = x;
					var yyy = y;
					var _dam = bullet_stats.bullet_power
					with(other) {
						scr_Optimism_Shot(xxx,yyy, _dam);
					}
					instance_destroy();	
				} else {
					bullet_stats.bullet_power -= poww;
					bullet_stats.bullet_size = (bullet_stats.bullet_power / bullet_stats.bullet_power_max);
				}
			}
		}
	}
}