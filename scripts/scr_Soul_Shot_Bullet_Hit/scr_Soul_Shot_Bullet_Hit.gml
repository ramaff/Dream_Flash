// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_soul_shot_bullet_hit_v2(_bullet_stats){

	if shot_stats.Shot_Damage {
		if shot_stats.Shot_Shield_Type = 1 || (shot_stats.Shot_Continue = 1 and _bullet_stats.soul_shot_block = 1) {
		    if shot_stats.Shot_Power >= (_bullet_stats.bullet_power / 2) {
		        shot_stats.Shot_Power -= (_bullet_stats.bullet_power / 2);
		        instance_destroy(other);
		    } else {
		        _bullet_stats.bullet_power -= (shot_stats.Shot_Power * 2);
		        instance_destroy();
		    }
			if shot_stats.Shot_Essence_Drain > 0 {
				scr_Refresh_Soul(shot_stats.Shot_Shield_Power * shot_stats.Shot_Essence_Drain);
			}
		    exit;
		}

		if shot_stats.Shot_Shield_Type = 2 {
		    if shot_stats.Shot_Shield_Power >= (_bullet_stats.bullet_power / 2) {
		        shot_stats.Shot_Shield_Power -= (_bullet_stats.bullet_power / 2);
		        instance_destroy(other);
		    } else {
		        _bullet_stats.bullet_power -= (shot_stats.Shot_Shield_Power * 2);
		        instance_destroy();
		    }
			if shot_stats.Shot_Essence_Drain > 0 {
				scr_Refresh_Soul(shot_stats.Shot_Shield_Power * shot_stats.Shot_Essence_Drain);
			}
		    exit;
		}

		//////// Check the bullet's list for this object's id
		var hit_again = variable_struct_exists(bullet_hits, other.id)
		if !hit_again and shot_stats.Shot_Pierce >= 0 {
			//ds_list_add(other.projectile_hits, shot_boss_id);
			//other.projectile_hits[shot_boss_id] = shot_boss_id
			variable_struct_set(bullet_hits, other.id, other.id)
	
			if shot_stats.Shot_Rebound_Type = 1 {
				var _mdir = point_direction(x, y, obj_Astral_Indicator.x, obj_Astral_Indicator.y)
				scr_Weapon_Rebound_Mouse(other.speed + 1, other.image_xscale, other.sprite_index, _mdir - 180);
    
				shot_stats.Shot_Pierce--;
				if shot_stats.Shot_Pierce <= 0 {
				    instance_destroy();
				}
				exit;
			}
	
			if shot_stats.Shot_Rebound_Type = 2 {
				scr_Weapon_Rebound(_bullet_stats.bullet_speed);
					
				scr_Soul_Shot_Rebound_Parts();
    
				shot_stats.Shot_Pierce--;
				if shot_stats.Shot_Pierce <= 0 {
				    instance_destroy();
				}
				exit;
			}
	
			if _bullet_stats.soul_shot_block = 1 {
				_bullet_stats.bullet_power -= (shot_stats.Shot_Power / 10);
				if _bullet_stats.bullet_power <= 0 {
					instance_destroy(other);
				}
				shot_stats.Shot_Pierce--;
					
				if ((_bullet_stats.bullet_power > 0) and (_bullet_stats.bullet_power_max > 0)) {
					_bullet_stats.bullet_size = 0.1 + 0.4 * sqrt(_bullet_stats.bullet_power / _bullet_stats.bullet_power_max);
				} else {
					_bullet_stats.bullet_size = 0.1;
				}
				other.image_xscale = _bullet_stats.bullet_size;
				other.image_yscale = _bullet_stats.bullet_size;
					
				if shot_stats.Shot_Pierce <= 0 {
					instance_destroy();
				}
			}
		
			if shot_stats.Shot_Shield_Type = 3 {
				if shot_stats.Shot_Shield_Power >= (_bullet_stats.bullet_power) {
				    instance_destroy(other);
				} else {
					
					var _shield = shot_stats.Shot_Shield_Power
					with(other) {
						scr_bullet_dampen_v2(_shield, _bullet_stats);
					}
				}
				if shot_stats.Shot_Essence_Drain > 0 {
					scr_Refresh_Soul(shot_stats.Shot_Shield_Power * shot_stats.Shot_Essence_Drain);
				}
				//exit;
			}
	
			if shot_stats.Shot_Bullet_Redirect = 1 {
				var rchance = shot_stats.Shot_Bullet_Redirect_Chance + irandom(99);
				if rchance >= 100 {
					
					repeat(4) {
						var ddir = other.direction - 270 + random(180);
						scr_Particle_Burst(obj_Friction_Part, spr_Soul_Bit, c_white, c_white, 1, 16 + random(8), ddir, 0, 0, image_xscale + random(0.1), 20 + random(10))
					}
					
					other.direction = random(360);
				}
			}
	
			if shot_stats.Shot_Freeze_Type > 0 and scr_Chance(1 / shot_stats.Shot_Freeze_Type) and _bullet_stats.bullet_speed != 0 {
				_bullet_stats.bullet_speed = 0;
				other.speed = 0;
		
				var bid = other.id;
				
				if instance_exists(bid) {
					with instance_create(x,y,obj_Bullet_Ice_Cube) {
						target = bid;
			
						image_xscale = 0.05;
						image_yscale = 0.05;
			
						depth = bid.depth - 1;
					}
				}
			}
		}


		if (shot_stats.Shot_Shield_Type = 4 || (shot_stats.Shot_Continue = 1 and _bullet_stats.soul_shot_block = 1)) and other.speed > 0 {
		    if shot_stats.Shot_Shield_Power >= (_bullet_stats.bullet_power) {
		        other.speed = 0;
				_bullet_stats.bullet_speed = 0;
		        //instance_destroy();
		    } else {
				_bullet_stats.bullet_power -= shot_stats.Shot_Shield_Power;
		        other.speed -= other.speed * (_bullet_stats.bullet_power / _bullet_stats.bullet_power_max);
				_bullet_stats.bullet_speed = _bullet_stats.bullet_speed * (_bullet_stats.bullet_speed / _bullet_stats.bullet_power_max);
		        //instance_destroy();
		    }
			if shot_stats.Shot_Essence_Drain > 0 {
				scr_Refresh_Soul(shot_stats.Shot_Shield_Power * shot_stats.Shot_Essence_Drain);
			}
			shot_stats.Shot_Shield_Type = 0;
			speed = 0;
			shot_stats.Shot_Acceleration = 1;
			x = other.x;
			y = other.y - (7.5 * 15);
			direction = 270;
			image_angle = direction;
			alarm[0] = 15;
		    exit;
		}

		if shot_stats.Shot_Bullet_Displace >= 1 {

			var point_dir = point_direction(x, y, other.x, other.y)
			var magnitude = shot_stats.Shot_Bullet_Displace * 0.5 * (1 + speed)
			other.x += lengthdir_x(magnitude, direction);
			other.y += lengthdir_y(magnitude, direction);
			other.x += lengthdir_x(magnitude, point_dir);
			other.y += lengthdir_y(magnitude, point_dir);

		}

	}

}

function scr_Soul_Shot_Bullet_Hit(){

	if shot_stats.Shot_Damage {
		if shot_stats.Shot_Shield_Type = 1 || (shot_stats.Shot_Continue = 1 and other.soulshotblock = 1) {
		    if shot_stats.Shot_Power >= (other.bulletpower / 2) {
		        shot_stats.Shot_Power -= (other.bulletpower / 2);
		        instance_destroy(other);
		    } else {
		        other.bulletpower -= (shot_stats.Shot_Power * 2);
		        instance_destroy();
		    }
			if shot_stats.Shot_Essence_Drain > 0 {
				scr_Refresh_Soul(shot_stats.Shot_Shield_Power * shot_stats.Shot_Essence_Drain);
			}
		    exit;
		}

		if shot_stats.Shot_Shield_Type = 2 {
		    if shot_stats.Shot_Shield_Power >= (other.bulletpower / 2) {
		        shot_stats.Shot_Shield_Power -= (other.bulletpower / 2);
		        instance_destroy(other);
		    } else {
		        other.bulletpower -= (shot_stats.Shot_Shield_Power * 2);
		        instance_destroy();
		    }
			if shot_stats.Shot_Essence_Drain > 0 {
				scr_Refresh_Soul(shot_stats.Shot_Shield_Power * shot_stats.Shot_Essence_Drain);
			}
		    exit;
		}

		//////// Check the bullet's list for this object's id
		var hit_again = variable_struct_exists(bullet_hits, other.id)
		if !hit_again and shot_stats.Shot_Pierce >= 0 {
			//ds_list_add(other.projectile_hits, shot_boss_id);
			//other.projectile_hits[shot_boss_id] = shot_boss_id
			variable_struct_set(bullet_hits, other.id, other.id)
	
			if shot_stats.Shot_Rebound_Type = 1 {
				var _mdir = point_direction(x, y, obj_Astral_Indicator.x, obj_Astral_Indicator.y)
				scr_Weapon_Rebound_Mouse(other.speed + 1, other.image_xscale, other.sprite_index, _mdir - 180);
    
				shot_stats.Shot_Pierce--;
				if shot_stats.Shot_Pierce <= 0 {
				    instance_destroy();
				}
				exit;
			}
	
			if shot_stats.Shot_Rebound_Type = 2 {
				scr_Weapon_Rebound();
					
				scr_Soul_Shot_Rebound_Parts();
    
				shot_stats.Shot_Pierce--;
				if shot_stats.Shot_Pierce <= 0 {
				    instance_destroy();
				}
				exit;
			}
	
			if other.soulshotblock = 1 {
				other.bulletpower -= (shot_stats.Shot_Power / 10);
				if other.bulletpower <= 0 {
				instance_destroy(other);
				}
				shot_stats.Shot_Pierce--;
					
				if ((other.bulletpower > 0) and (other.bulletpowermax > 0)) {
					other.bulletsize = 0.1 + 0.4 * sqrt(other.bulletpower / other.bulletpowermax);
				} else {
					other.bulletsize = 0.1;
				}
				other.image_xscale = other.bulletsize;
				other.image_yscale = other.bulletsize;
					
				if shot_stats.Shot_Pierce <= 0 {
				}
			}
		
			if shot_stats.Shot_Shield_Type = 3 {
				if shot_stats.Shot_Shield_Power >= (other.bulletpower) {
				    instance_destroy(other);
				} else {
					
					var _shield = shot_stats.Shot_Shield_Power
					with(other) {
						scr_Bullet_Dampen(_shield);
					}
				}
				if shot_stats.Shot_Essence_Drain > 0 {
					scr_Refresh_Soul(shot_stats.Shot_Shield_Power * shot_stats.Shot_Essence_Drain);
				}
				//exit;
			}
	
			if shot_stats.Shot_Bullet_Redirect = 1 {
				var rchance = shot_stats.Shot_Bullet_Redirect_Chance + irandom(99);
				if rchance >= 100 {
					
					repeat(4) {
						var ddir = other.direction - 270 + random(180);
						scr_Particle_Burst(obj_Friction_Part, spr_Soul_Bit, c_white, c_white, 1, 16 + random(8), ddir, 0, 0, image_xscale + random(0.1), 20 + random(10))
					}
					
					other.direction = random(360);
				}
			}
	
			if shot_stats.Shot_Freeze_Type > 0 and scr_Chance(1 / shot_stats.Shot_Freeze_Type) and other.bulletspeed != 0 {
				other.bulletspeed = 0;
				other.speed = 0;
		
				var bid = other.id;
				
				if instance_exists(bid) {
					with instance_create(x,y,obj_Bullet_Ice_Cube) {
						target = bid;
			
						image_xscale = 0.05;
						image_yscale = 0.05;
			
						depth = bid.depth - 1;
					}
				}
			}
		}


		if (shot_stats.Shot_Shield_Type = 4 || (shot_stats.Shot_Continue = 1 and other.soulshotblock = 1)) and other.speed > 0 {
		    if shot_stats.Shot_Shield_Power >= (other.bulletpower) {
		        other.speed = 0;
				other.bulletspeed = 0;
		        //instance_destroy();
		    } else {
				other.bulletpower -= shot_stats.Shot_Shield_Power;
		        other.speed -= other.speed * (other.bulletpower / other.bulletpowermax);
				other.bulletspeed = other.bulletspeed * (other.bulletspeed / other.bulletpowermax);
		        //instance_destroy();
		    }
			if shot_stats.Shot_Essence_Drain > 0 {
				scr_Refresh_Soul(shot_stats.Shot_Shield_Power * shot_stats.Shot_Essence_Drain);
			}
			shot_stats.Shot_Shield_Type = 0;
			speed = 0;
			shot_stats.Shot_Acceleration = 1;
			x = other.x;
			y = other.y - (7.5 * 15);
			direction = 270;
			image_angle = direction;
			alarm[0] = 15;
		    exit;
		}

		if shot_stats.Shot_Bullet_Displace >= 1 {

			var point_dir = point_direction(x, y, other.x, other.y)
			var magnitude = shot_stats.Shot_Bullet_Displace * 0.5 * (1 + speed)
			other.x += lengthdir_x(magnitude, direction);
			other.y += lengthdir_y(magnitude, direction);
			other.x += lengthdir_x(magnitude, point_dir);
			other.y += lengthdir_y(magnitude, point_dir);

		}

	}

}