// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Shot_Boss_Hit(_shot = other) {

	var _boss = id;
	var _shot_damage = 0;
	var _shspeed = _shot.hspeed;
	var _svspeed = _shot.vspeed;
	with(_shot) {
		var _hitable = false
	
		if !variable_struct_exists(_boss.projectile_hits, shot_boss_id) {
			_hitable = true
		}
		if variable_struct_get(_boss.projectile_hits, shot_boss_id) != (real(shot_boss_id) + shot_stats.Shot_ID_Offset) {
			_hitable = true	
		}
		
		if _hitable and shot_stats.Shot_Damage {
			variable_struct_set(shot_stats.Real_Boss_Hits, _boss.id, _boss.id)
		
			scr_Sound_Effect(asset_get_index(shot_stats.Shot_Hit_SFX));
    
		    if shot_stats.Shot_Pierce > 0 || shot_stats.Shot_Continue = 1 {
			
				if shot_stats.Shot_Excess_Essence > 0 {
					var ex_ess = shot_stats.Shot_Excess_Essence;
					var _xx = x;
					var _yy = y;
					if shot_stats.Shot_Melee {
						_xx = _boss.x;
						_yy = _boss.y;
					}
					while(ex_ess > 0) {
						var pot = min(ex_ess, 10)
						with instance_create(_xx,_yy,obj_Essence_Blop) {

							speed = 12 + random(15);
							direction = random(360);
							friction = 0.5;
							potency = pot;
							size = sqrt(pot) / 5;
							maxsize = size;
						}
						ex_ess -= pot;
					}
					shot_stats.Shot_Excess_Essence = 0;
				}
			
				scr_V09()
			
				if shot_stats.Shot_Chain > 0 {
				
					var max_streaks = 30;
					var xst = x;
					var yst = y;
					var streak_length = 64;
					var streak_target = _boss.id;
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
					    var _dmg = _shot.shot_stats.Shot_Impact_Power;
					    bosshealth -= _dmg;
						scr_setup_dmg_indicator(x,y, _dmg, c_white);
					}
		
					with(obj_Bullet_Parent) {
					    bulletspeed = bulletspeed / 3;
					    speed = speed / 3;
				
						bulletpower -= _shot.shot_stats.Shot_Impact_Power / 2;
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
		
		        _shot_damage = scr_Boss_Damage_Calc();
		
				if shot_stats.Shot_Screen_Shake > 2 {
					scr_Screen_Shake(shot_stats.Shot_Screen_Shake, shot_stats.Shot_Screen_Shake - 2);
					shot_stats.Shot_Screen_Shake = 0;
				}
		
				if _shot_damage > 0 {
				
					var _xx = x;
					var _yy = y;
					if shot_stats.Shot_Melee {
						_xx = _boss.x;
						_yy = _boss.y;
					}
					var _ass_hit = asset_get_index(shot_stats.Shot_Trail_Hit_Type)
					var _ass_index = asset_get_index(shot_stats.Shot_Trail_Hit_Sprite)
					var _area = shot_stats.Shot_Trail_Area * shot_stats.Shot_Size * 2
					repeat(shot_stats.Shot_Trail_Hit_Count) {
						var ddir = direction + 90 + random(180);
						scr_Particle_Burst(_ass_hit, _ass_index, 
										   shot_stats.Shot_Trail_Color_1, shot_stats.Shot_Trail_Color_2, 1, 12 + random(8), ddir,
										   0, _area, shot_stats.Shot_Size - 0.1 + random(0.2), 15 + random(10), false, _xx, _yy)
					}
				
					if shot_stats.Shot_Essence_Drain > 0 {
						obj_Soul_Parent.senergy += shot_stats.Shot_Power * shot_stats.Shot_Essence_Drain;
					}
				}
		
				if shot_stats.Shot_Life_Drain > 0 {
					var valdis = (_shot_damage / 10) * shot_stats.Shot_Life_Drain;
					scr_Heal_Soul(valdis);

					scr_setup_dmg_indicator(obj_Soul_Parent.x,obj_Soul_Parent.y, valdis, c_fuchsia)

				}
		
				if global.A[7] > 0 and shot_stats.Shot_Origin = obj_Soul_Parent {
					scr_A07();	
				}
        
		        if shot_stats.Shot_Weaken != 0 {
		            for(var i = 0; i <= 49; i++) {
		                if _boss.bossweaken[i] = 0 {
		                    _boss.bossweaken[i] = shot_stats.Shot_Weaken;
		                    _boss.bossweakentime[i] = shot_stats.Shot_Weaken_Time;
		                    break;
		                }
		            }
		        }
		
				if shot_stats.Shot_Armour_Tear != 0 {
					if _boss.bossdefense > 0 {
						_boss.bossdefense -= shot_stats.Shot_Armour_Tear;
						if _boss.bossdefense < 0 {
							_boss.bossdefense = 0;	
						}
					}
				}
        
		        if _boss.pathBoss = 0 {
		            scr_Apply_Boss_Knockback(_boss.id, shot_stats.Shot_Knock_Back, 5, direction)
		        } else {
		            if shot_stats.Shot_Knock_Back > _boss.bossknockdefense {
		                _boss.path_position -= (shot_stats.Shot_Knock_Back - _boss.bossknockdefense) / 1000;
						_boss.deadknockdirection = direction
		            }
		        }
        
				variable_struct_set(_boss.projectile_hits, shot_boss_id, real(shot_boss_id) + shot_stats.Shot_ID_Offset)
			
				//show_debug_message("scr_Soul_Shot_Boss_Hit: " + string(shot_stats.Shot_Burst_Stats))
			
				if shot_stats.Shot_Burst_Stats != false {
					var burstIndex = array_length(shot_stats.Shot_Burst_Stats) - 1;
					if instance_exists(obj_Boss_Parent) and burstIndex >= 0 {
						var _xx = x;
						var _yy = y;
						if shot_stats.Shot_Melee {
							_xx = _boss.x;
							_yy = _boss.y;
						}
						scr_Basic_Projectile_Burst(_xx, _yy)
						//instance_destroy();
					}	
				} 
        
		        if shot_stats.Shot_Impact_Type = 1 {
		            with (obj_Boss_Parent) {
						var _imp_hitable = false
	
						if !variable_struct_exists(projectile_hits, other.shot_boss_id) {
							_imp_hitable = true
						}
						if variable_struct_get(projectile_hits, other.shot_boss_id) != (real(other.shot_boss_id) + other.shot_stats.Shot_ID_Offset) {
							_imp_hitable = true	
						}
						if _imp_hitable {
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
				if shot_stats.Shot_Continue = 0 || (shot_stats.Shot_Continue = 1 and shot_stats.Shot_Pierce > 1) {
			        shot_stats.Shot_Pierce--;
			        if shot_stats.Shot_Pierce <= 0 {
			            instance_destroy();
			        }
				} else {
					if shot_stats.Shot_Power >= (_boss.bosshealth + shot_stats.Shot_Power) {
					    shot_stats.Shot_Power -= (_boss.bosshealth + shot_stats.Shot_Power);
					} else {
					    instance_destroy();
					}
				}
			
				if shot_stats.Shot_Spike_Aura = true {
					with instance_create(x, y, obj_Spike_Aura) {
						damage = _shot.shot_stats.Shot_Power * 1.35 * global.soulstateformboost / 40;
						direction = _shot.direction - 45 + random(90);
						image_angle = direction;
						image_xscale = 0.2 + sqrt(damage / 9);
						image_yscale = image_xscale;
					
						alarm[0] = 20;
					}
				}
			
        
		        if _boss.currentphase >= _boss.finalphase
		        if _boss.bosshealth <= 0 {
		            instance_destroy(other);
		        }
		    }
		}
	}
	
	if _shot_damage > 0 {
		var _mag = 0.05 + (sqrt(1 + _shot_damage) / 30)
					
		if abs(_svspeed) > abs(_shspeed) {
			scr_Boss_Stretch("Horizontal", _mag);
		} else {
			scr_Boss_Stretch("Vertical", _mag);
		}	

		
		with instance_create_depth(x, y, depth - 1, obj_Boss_Flash) {
			target = _boss;	
			image_alpha = 0.5 + _mag;
			alarm[0] = 3 + floor(_mag * 5);
			event_user(0);
		}
		
	}


}