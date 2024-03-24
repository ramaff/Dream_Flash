// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Shot_Boss_Hit() {

	var hit_again = variable_struct_exists(other.projectile_hits, shot_boss_id)
	if !hit_again and shot_stats.Shot_Damage {
    
	    if shot_stats.Shot_Pierce > 0 || shot_stats.Shot_Continue = 1 {
			
			if shot_stats.Shot_Excess_Essence > 0 {
				var ex_ess = shot_stats.Shot_Excess_Essence;
				var pot = 0
				while(ex_ess > 0) {
					pot = min(ex_ess, 4)
					with instance_create(x,y,obj_Essence_Blop) {
						speed = 8 + random(16);
						direction = random(360);
						friction = 0.5;
						potency = pot;
						size = sqrt(pot) / 3;
						maxsize = size;
					}
					ex_ess -= pot;
				}
				shot_stats.Shot_Excess_Essence = 0;
			}
			
			if shot_stats.Shot_Chain > 0 {
				
				var max_streaks = 30;
				var xst = x;
				var yst = y;
				var streak_length = 64;
				var streak_target = other.id;
				var chain_damage = shot_stats.Shot_Chain_Power;
				var streak_color = shot_stats.Shot_Chain_Color;
				streak_color = make_color_rgb(streak_color[0], streak_color[1], streak_color[2])
				var chains = shot_stats.Shot_Chain;
				var chain_range = shot_stats.Shot_Chain_Range;
	
				scr_Shot_Lightning_Chain(max_streaks, streak_target, chains, xst, yst, streak_length, chain_damage, streak_color, chain_range)
				
			}
		
			if shot_stats.Shot_Pierce = 1 and shot_stats.Shot_Impact_Type = 2 {
				scr_Screen_Shake(20, 14);
				//scr_Screen_Flash(7);
				scr_Disk_Effect(20, 1, c_white)
				scr_Disk_Effect(25, 1.25, c_white)
				scr_Disk_Effect(30, 1.5, c_white)
		
				with (obj_Boss_Parent) {
				    dmg = other.shot_stats.Shot_Impact_Power;
				    bosshealth -= dmg;
				    scr_Damage_Indicator(0, dmg, 2);
				}
		
				with(obj_Bullet_Parent) {
				    bulletspeed = bulletspeed / 3;
				    speed = speed / 3;
				
					bulletpower -= other.shot_stats.Shot_Impact_Power / 2;
					bulletsize = (bulletpower / bulletpowermax);
				
					if bulletsize < 0.05 {
						bulletsize = 0.05;	
					}
					if bulletpower < 1 {
						instance_destroy();	
					}
				}
			}
			
			//Print_DF("shot power: " + string(shot_stats.Shot_Power))
		
	        scr_Boss_Damage_Calc();
		
			if shot_stats.Shot_Screen_Shake > 2 {
				scr_Screen_Shake(shot_stats.Shot_Screen_Shake, shot_stats.Shot_Screen_Shake - 2);
				shot_stats.Shot_Screen_Shake = 0;
			}
		
			if shotDamage > 0 {
				
				repeat(shot_stats.Shot_Trail_Hit_Count) {
					var ddir = direction - 90 + random(180);
					scr_Particle_Burst(shot_stats.Shot_Trail_Hit_Type, shot_stats.Shot_Trail_Hit_Sprite, shot_stats.Shot_Trail_Color1, shot_stats.Shot_Trail_Color2, 1, 12 + random(8), ddir, 0, 0, shot_stats.Shot_Size + random(0.2), 15 + random(10))
				}
				
				if shot_stats.Shot_Essence_Drain > 0 {
					obj_Soul_Parent.senergy += shot_stats.Shot_Power * shot_stats.Shot_Essence_Drain;
				}
			}
		
			if shot_stats.Shot_Life_Drain > 0 {
				var valdis = (shotDamage / 10) * shot_stats.Shot_Life_Drain;
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
        
	        if shot_stats.Shot_Weaken != 0 {
	            for(i = 0; i <= 49; i++) {
	                if other.bossweaken[i] = 0 {
	                    other.bossweaken[i] = shot_stats.Shot_Weaken;
	                    other.bossweakentime[i] = shot_stats.Shot_Weaken_Time;
	                    break;
	                }
	            }
	        }
		
			if shot_stats.Shot_Armour_Tear != 0 {
				if other.bossdefense > 0 {
					other.bossdefense -= shot_stats.Shot_Armour_Tear;
					if other.bossdefense < 0 {
						other.bossdefense = 0;	
					}
				}
			}
        
	        if other.pathBoss = 0 {
	            scr_Apply_Boss_Knockback(other.id, shotknockback, 5, direction)
	        } else {
	            if shotknockback > other.bossknockdefense {
	                other.path_position -= (shotknockback - other.bossknockdefense) / 1000;
					other.deadknockdirection = direction
	            }
	        }
        
	        //ds_list_add(other.projectile_hits, shot_boss_id);
			variable_struct_set(other.projectile_hits, shot_boss_id, shot_boss_id)
			
			//show_debug_message("scr_Soul_Shot_Boss_Hit: " + string(shot_stats.Shot_Burst_Stats))
			
			if shot_stats.Shot_Burst_Stats != false {
				var burstIndex = array_length(shot_stats.Shot_Burst_Stats) - 1;
				if instance_exists(obj_Boss_Parent) and burstIndex >= 0 {
					dir = -shot_stats.Shot_Burst_Stats[burstIndex].Spread / 2;
					shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span * 0.6;
					image = 1
					var _v_burst_stats = shot_stats.Shot_Burst_Stats[burstIndex]
					repeat(shot_stats.Shot_Burst_Stats[burstIndex].Amount) {
					    with instance_create(x,y, asset_get_index(_v_burst_stats.Shot_Type)) {
					        scr_Duplicate_Shot_Stats();
					
							scr_Shot_Burst_Stats(_v_burst_stats);
					
							if burstIndex > 0 {
								shot_stats.Shot_Burst_Stats = [];
								for(var i = 0; i <= burstIndex-1; i++) {
									array_insert(shot_stats.Shot_Burst_Stats,i,other.shot_stats.Shot_Burst_Stats[i])
								}
							} else {
								shot_stats.Shot_Burst_Stats = false;	
							}
					    }
					    dir += shot_stats.Shot_Burst_Stats[burstIndex].Spread;
					}
					instance_destroy();
				}	
			} /*else if shotbursttype >= 1 {
	            dir = 90
	            repeat(shotburstamount) {
					shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span * 0.6;
	                with instance_create(x,y,obj_Lesser_Soul_Shot) {
						//shot_stats.Shot_Life_Span = other.shot_stats.Shot_Life_Span / 2;
	                    scr_Duplicate_Shot_Stats();
	                    //shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span / 2;
	                    //alarm[0] = shot_stats.Shot_Life_Span;
	                }
	                dir += 360 / shotburstamount;
	            }
	        } */
        
	        if shot_stats.Shot_Impact_Type = 1 {
	            with (obj_Boss_Parent) {
	                var hit_again = variable_struct_exists(projectile_hits, other.shot_boss_id)
					if !hit_again {
	                    if distance_to_object(other) < other.shot_stats.Shot_Impact_Size {
	                        scr_Boss_Splash_Damage_Calc();
	                    }
	                }
	            }

				if shot_stats.Shot_Impact_Explode = 1 {
					scr_Boss_Hit_Explosion();
				}
	        }
		
			if shot_stats.Shot_Bounce = 2 {
				direction = random(360);	
			}
        
	       // if shot_stats.Shot_Melee = 1 { 
			if shot_stats.Shot_Continue = 0 {
		        shot_stats.Shot_Pierce--;
		        if shot_stats.Shot_Pierce <= 0 {
		            instance_destroy();
		        }
			} else {
				if shot_stats.Shot_Power >= (other.bosshealth + shot_stats.Shot_Power) {
				    shot_stats.Shot_Power -= (other.bosshealth + shot_stats.Shot_Power);
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