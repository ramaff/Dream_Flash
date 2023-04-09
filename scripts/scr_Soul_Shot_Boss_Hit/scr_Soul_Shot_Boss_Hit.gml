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
				var streak_target = other.id;
				var chain_damage = shotchainpower;
				var streak_color = shot_stats.Shot_Chain_Color;
				streak_color = make_color_rgb(streak_color[0], streak_color[1], streak_color[2])
				var chains = shotchain;
				var chain_range = shotchainrange;
	
				scr_Shot_Lightning_Chain(max_streaks, streak_target, chains, xst, yst, streak_length, chain_damage, streak_color, chain_range)
				
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
	                other.bossknockbacktime = 3;
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

				if shotimpactexplode = 1 {
					scr_Boss_Hit_Explosion();
				}
	        }
		
			if shotbounce = 2 {
				direction = random(360);	
			}
        
	       // if shotmelee = 1 { 
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

        
	        if other.currentphase >= other.finalphase
	        if other.bosshealth <= 0 {
	            instance_destroy(other);
	        }
	    }
	}


}