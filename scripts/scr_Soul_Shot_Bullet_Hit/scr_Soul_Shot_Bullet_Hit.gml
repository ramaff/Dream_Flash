// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Shot_Bullet_Hit(){

	if shotdamage {
		if shotshieldtype = 1 || (shotcontinue = 1 and other.soulshotblock = 1) {
		    if shotpower >= (other.bulletpower / 2) {
		        shotpower -= (other.bulletpower / 2);
		        instance_destroy(other);
		    } else {
		        other.bulletpower -= (shotpower * 2);
		        instance_destroy();
		    }
			if shotessencedrain > 0 {
				scr_Refresh_Soul(shotshieldpower * shotessencedrain);
			}
		    exit;
		}

		if shotshieldtype = 2 {
		    if shotshieldpower >= (other.bulletpower / 2) {
		        shotshieldpower -= (other.bulletpower / 2);
		        instance_destroy(other);
		    } else {
		        other.bulletpower -= (shotshieldpower * 2);
		        instance_destroy();
		    }
			if shotessencedrain > 0 {
				scr_Refresh_Soul(shotshieldpower * shotessencedrain);
			}
		    exit;
		}

		//////// Check the bullet's list for this object's id
		//if ds_exists(other.projectile_hits, ds_type_list) {
			var hit_again = variable_struct_exists(bullet_hits, other.id)
			if !hit_again and shotpierce >= 0 {
				//ds_list_add(other.projectile_hits, shot_boss_id);
				//other.projectile_hits[shot_boss_id] = shot_boss_id
				variable_struct_set(bullet_hits, other.id, other.id)
	
				if shotreboundtype = 1 {
				    scr_Weapon_Rebound_Mouse();
    
				    shotpierce--;
				    if shotpierce <= 0 {
				        instance_destroy();
				    }
					exit;
				}
	
				if shotreboundtype = 2 {
				    scr_Weapon_Rebound();
    
				    shotpierce--;
				    if shotpierce <= 0 {
				        instance_destroy();
				    }
				    exit;
				}
	
				if other.soulshotblock = 1 {
				    other.bulletpower -= (shotpower / 10);
				    if other.bulletpower <= 0 {
				    instance_destroy(other);
				    }
				    shotpierce--;
					
					if ((other.bulletpower > 0) and (other.bulletpowermax > 0)) {
						other.bulletsize = 0.1 + 0.4 * sqrt(other.bulletpower / other.bulletpowermax);
					} else {
						other.bulletsize = 0.1;
					}
					other.image_xscale = other.bulletsize;
					other.image_yscale = other.bulletsize;
					
				    if shotpierce <= 0 {
				    instance_destroy();
				    }
				}
			//}
		//}

		// Check this object's list for the bullets id
		/*var hit_again = 0;
		if ds_exists(bullet_hits, ds_type_list) {
			hit_again = ds_list_find_index(bullet_hits, other.id);
		} else {
			bullet_hits = ds_list_create();	
		} */
	
		//var hit_again = variable_struct_exists(bullet_hits, other.id)
		//show_debug_message(bullet_hits)
		//show_debug_message(other.id)
	
		//if !hit_again and shotpierce >= 0 {
			//ds_list_add(bullet_hits, other.id);
			//variable_struct_set(bullet_hits, other.id, other.id)
		
			if shotshieldtype = 3 {
				if shotshieldpower >= (other.bulletpower) {
				    instance_destroy(other);
				} else {
				    other.bulletpower -= (shotshieldpower);
					if ((other.bulletpower > 0) and (other.bulletpowermax > 0)) {
						other.bulletsize = 0.1 + 0.4 * sqrt(other.bulletpower / other.bulletpowermax);
					} else {
						other.bulletsize = 0.1;
					}
					other.bulletspeed = other.bulletspeed / 2;
					other.speed = other.bulletspeed;
					other.image_xscale = other.bulletsize;
					other.image_yscale = other.bulletsize;
				}
				if shotessencedrain > 0 {
					scr_Refresh_Soul(shotshieldpower * shotessencedrain);
				}
				//exit;
			}
	
			if shotbulletredirect = 1 {
				var rchance = shotbulletredirectchance + irandom(99);
				if rchance >= 100 {
					other.direction = random(360);
				}
			}
	
			if shotfreezetype > 0 and scr_Chance(1 / shotfreezetype) and other.bulletspeed != 0 {
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


		if (shotshieldtype = 4 || (shotcontinue = 1 and other.soulshotblock = 1)) and other.speed > 0 {
		    if shotshieldpower >= (other.bulletpower) {
		        other.speed = 0;
				other.bulletspeed = 0;
		        //instance_destroy();
		    } else {
				other.bulletpower -= shotshieldpower;
		        other.speed -= other.speed * (other.bulletpower / other.bulletpowermax);
				other.bulletspeed = other.bulletspeed * (other.bulletspeed / other.bulletpowermax);
		        //instance_destroy();
		    }
			if shotessencedrain > 0 {
				scr_Refresh_Soul(shotshieldpower * shotessencedrain);
			}
			shotshieldtype = 0;
			speed = 0;
			shotacceleration = 1;
			x = other.x;
			y = other.y - (7.5 * 15);
			direction = 270;
			image_angle = direction;
			alarm[0] = 15;
		    exit;
		}

		if shotbulletdisplace = 1 {
			//backSpeed = speed + 1.6 * smovementspeed * ((10 + smovementfactorbuffamount) / 10) * ((10 + smovementfactor) / 10) * ((40 + global.souldexterity) / 40);

			var i;
			i = point_direction(x, y, other.x, other.y);
			other.x += lengthdir_x(2 + speed, i);
			other.y += lengthdir_y(2 + speed, i);

		}

	}

}