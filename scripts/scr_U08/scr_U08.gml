// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// Soul Alarm 4

function scr_U08(){
	if global.U[8] > 0 {
		with(obj_Basic_Projectile_Parent) {
			if scr_Chance(90 / global.U[8]) {
				var _xx = x;
				var _yy = y;
				var _pow = shotpower * global.U[8];
				var _poison_pow = round(_pow / 6)
				var _poison_size = sqrt(image_xscale * (100 + _pow)) * 35
				var _poison_sprite_size = _poison_size / 400
				
				Print_DF("_poison_size: " + string(_poison_size))
				Print_DF("_poison_sprite_size: " + string(_poison_sprite_size))
				
				repeat(8) {
					var _ddir = random(360);
					scr_Particle_Burst(obj_Friction_Part, spr_Smoke_Part, make_color_rgb(40,255,80), make_color_rgb(30,205,60), 
									   1, 4 + random(2), _ddir, 0, 30, _poison_sprite_size + random(0.1), 45 + random(15))
	
				}
				
				
				other.direction = point_direction(x, y, other.x, other.y);
				other.speed = 100 / max(10, sqrt(point_distance(x, y, other.x, other.y)));
				other.friction = 1;

				with (obj_Boss_Parent) {
					if point_distance(x,y,_xx,_yy) < _poison_size {
						
						direction = point_direction(_xx, _yy, x, y);
						speed = 50 / max(10, sqrt(point_distance(x, y, _xx, _yy)));
						friction = 1;
						
						bosshealth -= _pow;
						scr_Damage_Indicator(0, _pow, 1);
					
						for(i = 0; i <= 49; i++) {
					        if bosspoison[i] = 0 {
					            bosspoison[i] = _poison_pow;
					            bosspoisontime[i] = 30;
					            bosspoisonmaxtime[i] = 30;
					            bosspoisonticks[i] = 6;
					            break;
					        }
					    }
					
					}
				}
				instance_destroy();
			}
		}
	}
}