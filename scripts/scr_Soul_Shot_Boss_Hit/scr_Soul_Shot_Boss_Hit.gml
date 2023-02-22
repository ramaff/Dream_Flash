// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Shot_Boss_Hit() {

	var hit_again = variable_struct_exists(other.projectile_hits, shot_boss_id)
	if !hit_again and shotdamage {
    
	    if shotpierce > 0 || shotcontinue = 1 {
			
			if shotchain > 0 {
				var max_streaks = 30;
				var xst = x;
				var yst = y;
				var streak_length = 64;
				var bosses_struck = {};
				variable_struct_set(bosses_struck, shot_boss_id, shot_boss_id)
				streak_target = other.id;
				var chain_damage = shotchainpower;
				
				while instance_exists(streak_target) and shotchain > 0 {
					var streak_target = noone
					var streak_dis = 99999
			        with obj_Boss_Parent {
			            var cur_dis = distance_to_object(other);
			            var hit_again = variable_struct_exists(bosses_struck, other.shot_boss_id)
						if !hit_again {
				            if streak_target == noone || cur_dis < streak_dis {
								if point_distance(x,y,other.x,other.y) < other.shotchainrange {
									streak_target = id;
									streak_dis = cur_dis
								}
							}
						}
			        }
					if instance_exists(streak_target) {
						//var boss_target = instance_nearest(x,y,obj_Boss_Parent)
						var aim_angle = point_direction(xst, yst, streak_target.x, streak_target.y);
						var boss_dist = point_distance(xst, yst, streak_target.x, streak_target.y);
						while boss_dist > 70 and max_streaks > 0 {
							with instance_create(xst, yst, obj_Lightning_Streak) {
								image_angle = aim_angle;
							}
							xst += lengthdir_x(streak_length, aim_angle)
							yst += lengthdir_y(streak_length, aim_angle)
							aim_angle = point_direction(xst, yst, streak_target.x, streak_target.y) - 90 + random(180);
							boss_dist = point_distance(xst, yst, streak_target.x, streak_target.y);
							max_streaks--;
						}
						var boss_aim_angle = point_direction(xst, yst, streak_target.x, streak_target.y);
						with instance_create(xst, yst, obj_Lightning_Streak) {
							image_angle = boss_aim_angle;
						}
						with streak_target {
							bosshealth -= chain_damage;
            
							scr_Damage_Indicator(0, chain_damage, 1);
						}
						variable_struct_set(bosses_struck, streak_target.shot_boss_id, streak_target.shot_boss_id)
						shotchain--;
					} else {
						max_streaks = 2 + irandom(1);
						aim_angle = random(360);
						while max_streaks > 0 {
							with instance_create(xst, yst, obj_Lightning_Streak) {
								image_angle = aim_angle;
							}
							xst += lengthdir_x(streak_length, aim_angle)
							yst += lengthdir_y(streak_length, aim_angle)
							aim_angle = aim_angle - 90 + random(180);
							max_streaks--;
						}
					}
				}
			}
		
			if shotpierce = 1 and shotimpacttype = 2 {
				scr_Screen_Shake(20, 14);
				scr_Screen_Flash(7);
		
				with (obj_Boss_Parent) {
				    dmg = other.shotimpactpower;
				    bosshealth -= dmg;
				    scr_Damage_Indicator(0, dmg, 2);
				}
		
				with(obj_Bullet_Parent) {
				    bulletspeed = bulletspeed / 3;
				    speed = speed / 3;
				
					bulletpower -= other.shotimpactpower / 2;
					bulletsize = (bulletpower / bulletpowermax);
				
					if bulletsize < 0.05 {
						bulletsize = 0.05;	
					}
					if bulletpower < 1 {
						instance_destroy();	
					}
				}
			}
		
	        scr_Boss_Damage_Calc();
		
			if shotscreenshake > 2 {
				scr_Screen_Shake(shotscreenshake, shotscreenshake - 2);
				shotscreenshake = 0;
			}
		
			if shotDamage > 0 {
				//scr_Boss_Hit_Part_Splash_Juice();
				
				scr_Particle_Burst(shottrailhittype, shottrailhitsprite, shottrailcolor1, shottrailcolor2, shottrailhitcount, shottrailhitspeed, 0, 360 / shottrailhitcount, shottrailarea, shotsize, shottrailhitlife, true)
				scr_Particle_Burst(shottrailhittype, shottrailhitsprite, shottrailcolor1, shottrailcolor2, shottrailhitcount / 2, shottrailhitspeed * 2, 0, 720 / shottrailhitcount, shottrailarea, shotsize, shottrailhitlife, true)
				
				if shotessencedrain > 0 {
					obj_Soul_Parent.senergy += shotpower * shotessencedrain;
				}
			}
		
			if shotlifedrain > 0 {
				var valdis = (shotDamage / 10) * shotlifedrain;
				scr_Heal_Soul(valdis);

				with instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_Damage_Indicator) {
					element = 6;
					damageIndication = valdis;
					textSize = 1;
					direction = 90;
					speed = 1.5 + random(0.35)
					friction = 0.01 + (other.speed / 600)
					alarm[0] = 30 + irandom(6);
				}
			}
		
			if global.A[7] > 0 and shotorigin = obj_Soul_Parent {
				scr_A07();	
			}
        
	        if shotweaken != 0 {
	            for(i = 0; i <= 49; i++) {
	                if other.bossweaken[i] = 0 {
	                    other.bossweaken[i] = shotweaken;
	                    other.bossweakentime[i] = shotweakentime;
	                    break;
	                }
	            }
	        }
		
			if shotarmourtear != 0 {
				if other.bossdefense > 0 {
					other.bossdefense -= shotarmourtear;
					if other.bossdefense < 0 {
						other.bossdefense = 0;	
					}
				}
			}
        
	        if other.pathBoss = 0 {
	            if shotknockback >= other.bossknockdefense {
	                other.bossknockbackdirection = direction;
	                other.bossknockback = (shotknockback - other.bossknockdefense);
	                other.bossknockbacktime = 5;
					if other.bossknockback > 200 {
						other.bossknockback = 200;	
					}
	            }
	        } else {
	            if shotknockback > other.bossknockdefense {
	                other.path_position -= (shotknockback - other.bossknockdefense) / 1000;
	            }
	        }
        
	        //ds_list_add(other.projectile_hits, shot_boss_id);
			variable_struct_set(other.projectile_hits, shot_boss_id, shot_boss_id)
			
			if shotburststats != false {
				var burstIndex = array_length(shotburststats) - 1;
				if instance_exists(obj_Boss_Parent) and burstIndex >= 0 {
					dir = -shotburststats[burstIndex].Spread / 2;
					shotlifespan = shotlifespan * 0.6;
					repeat(shotburststats[burstIndex].Amount) {
					    with instance_create(x,y,obj_Lesser_Soul_Shot) {
					        scr_Duplicate_Shot_Stats();
						
							var vshotburststats = other.shotburststats[burstIndex]
					
							scr_Shot_Burst_Stats(vshotburststats);
					
							if burstIndex > 0 {
								shotburststats = [];
								for(var i = 0; i <= burstIndex-1; i++) {
									array_insert(shotburststats,i,other.shotburststats[i])
								}
							} else {
								shotburststats = false;	
							}
							//array_delete(shotburststats,burstIndex,1);
					    }
					    dir += shotburststats[burstIndex].Spread;
					}
					instance_destroy();
				}	
			} else if shotbursttype >= 1 {
	            dir = 90
	            repeat(shotburstamount) {
					shotlifespan = shotlifespan * 0.6;
	                with instance_create(x,y,obj_Lesser_Soul_Shot) {
						//shotlifespan = other.shotlifespan / 2;
	                    scr_Duplicate_Shot_Stats();
	                    //shotlifespan = shotlifespan / 2;
	                    //alarm[0] = shotlifespan;
	                }
	                dir += 360 / shotburstamount;
	            }
	        }
        
	        if shotimpacttype = 1 {
	            with (obj_Boss_Parent) {
	                var hit_again = variable_struct_exists(projectile_hits, other.shot_boss_id)
					if !hit_again {
	                    if distance_to_object(other) < other.shotimpactsize {
	                        scr_Boss_Splash_Damage_Calc();
	                    }
	                }
	            }
				/*
	            with instance_create(x,y,obj_Essence_Impact_Show) {
					sprite_index = other.shotexplosionsprite;
	                size = other.shotimpactsize / 150;
	                image_xscale = size;
	                image_yscale = size;
	            }
				*/
				if shotimpactexplode = 1 {
					scr_Boss_Hit_Explosion();
				}
	        }
		
			if shotbounce = 2 {
				direction = random(360);	
			}
        
	        if shotmelee = 1 { 
				if shotcontinue = 0 {
		            shotpierce--;
		            if shotpierce <= 0 {
		                instance_destroy();
		            }
				} else {
					if shotpower >= (other.bosshealth + shotpower) {
				        shotpower -= (other.bosshealth + shotpower);
				    } else {
				        instance_destroy();
				    }
				}
	        } 
			
			/*
			if shotchain <= 0 || shotmelee = 1 { 
				if shotcontinue = 0 {
		            shotpierce--;
		            if shotpierce <= 0 {
		                instance_destroy();
		            }
				} else {
					if shotpower >= (other.bosshealth + shotpower) {
				        shotpower -= (other.bosshealth + shotpower);
				    } else {
				        instance_destroy();
				    }
				}
	        } else {
				if (shotmelee = 0 and shothomingtype != 2) {
		            shotchain--;
		            target = noone
		            x = other.x;
		            y = other.y;
		            with obj_Boss_Parent {
		                dis = distance_to_object(other);
		                var hit_again = variable_struct_exists(projectile_hits, other.shot_boss_id)
						if !hit_again
		                if other.target == noone || dis < other.target.dis
		                if collision_circle(other.x, other.y, other.shotchainrange, id, true, false)
		                other.target = id;
		            }
		            if target != noone {
		                move_towards_point(target.x,target.y,shotchainspeed);
		            } else if shotpierce <= 0 and shotextrahits <= 0 {
		                instance_destroy();
		            }
				}
	        } */
        
	        if other.currentphase >= other.finalphase
	        if other.bosshealth <= 0 {
	            instance_destroy(other);
	        }
	    }
	}


}