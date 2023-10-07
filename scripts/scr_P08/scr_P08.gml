// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Soul Alarm 4

function scr_P08(){

	if global.P[8] > 0 {
		
		var _c_wp = global.currentweapon

		if scr_Non_Projectile_Weapon(_c_wp) {
			exit;	
		}
		
		current_weapon_stats = json_parse(json_stringify(variable_struct_get(global.weapon_stats, string(_c_wp))))
		
		scr_Default_Weapon_Stats();
		
		var _delay = current_weapon_stats.Delay / scr_Class_Stat_Firerate_Multiplier();
		
		global.trailing_off += global.P[8] * 4 / _delay
		
		while global.trailing_off >= 1 {
			
			global.trailing_off -= 1;
		
			current_weapon_stats.Shot_Speed = 0
			current_weapon_stats.Shot_Forward = 0;
			current_weapon_stats.Shot_Lifespan = current_weapon_stats.Shot_Lifespan * 2
			current_weapon_stats.Shot_Lobbing = true
			current_weapon_stats.Shot_Power = current_weapon_stats.Shot_Power * 0.5;
			current_weapon_stats.Shot_Size = current_weapon_stats.Shot_Size * 0.7;
		
			//current_weapon_stats.Shot_Lobbing_Tilt = -10;

			scr_setup_weapon_stats(current_weapon_stats);
		
			scr_Hard_Coded_Weapon_Stats(_c_wp);
		
			Shot_Stats.Shot_Height += 20
			Shot_Stats.Shot_Fall_Speed = -0.2
			
			var _dist = Shot_Stats.Shot_Height;
			var _time = Shot_Stats.Shot_Lifespan;
			var _vel = Shot_Stats.Shot_Fall_Speed;
			
			// velocity is backwards
	        Shot_Stats.Shot_Gravity = ((2 * _dist) / (_time * _time)) + (_vel / _time)
		
			scr_Shot_Creation();
		}
		
	}
		/*
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
	} */
}