// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Beam_Create(shxx,shyy){
	if other.Shot_Beam = 2 {
		shotdamage = false;
		if other.sWeaponTicker mod 3 = 0 { 
			shotdamage = true;	
		}
	}	
	if other.Shot_Type = obj_Beam_Shot {
		
		
		var beamseg = 1;
		var beamdir = direction;
		var curvedir = other.Shot_Beam_Curve * (-1 + random(2))
		var beamstop = other.Shot_Melee;
		
		var beamxx = lengthdir_x(-6, beamdir)
		var beamyy = lengthdir_y(-6, beamdir)
		
		var oldbeamdir = beamdir
		
		dir = beamdir;
		image_angle = beamdir;
		speed = 0;
		shotspeed = 0;
		
		var beamtype = other.Shot_Beam;
		var splitsize = 40;
		var beamtotalsegs = other.Shot_Beam_Count;
		beamtotalsegs = 15;
		
		splitsize = 64;
		var dirChange = 0;
		
		var boss_hits = {};
		
		//show_debug_message("/nbeam start:\n--------------")
		
		var homespeed = shothomingspeed * 2.5;
		var hit_again = -1;
		
		splitsize = 128 * shotsize;
		if beamseg <= 2 and other.Shot_Beam = 2 {
			splitsize = 128 * global.essencebeamsize;	
		}
				
		while(beamseg <= beamtotalsegs) {
			
			beamdir += beamseg * curvedir;
			
			if shothomingtype > 0 {
				if homespeed > 0 and homespeed < 12.5 {
					homespeed = 12.5	
				}
				if homespeed > 12.5 {
					homespeed = 25	
				}
				//show_debug_message("shothomingspeed" + string(shothomingspeed))
				//show_debug_message("homespeed" + string(homespeed))
				var target = noone
				if instance_exists(obj_Boss_Parent) {
				    with(obj_Boss_Parent) {
						//if ds_exists(boss_hits, ds_type_list) {
					        hit_again = variable_struct_exists(boss_hits, id)//ds_list_find_index(boss_hits, id);
							if !hit_again {
								target = id;
							} else {
								if point_distance(shxx + beamxx,shyy + beamyy, x, y) < 65 {
									variable_struct_set(boss_hits, id, id)
								//ds_list_add(boss_hits, id)
								}
							}
						//}
				    }
				}
			    if target != noone {
    
			        var pointDir = point_direction(shxx + beamxx,shyy + beamyy,target.x,target.y);
					dirChange = sin(degtorad(pointDir - beamdir)) * homespeed;
						if dirChange >= 5 and dirChange < 15 {
							dirChange = 12.5;	
						}
						if dirChange > 15 {
							dirChange = 25;	
						}
						if dirChange <= -5 and dirChange > -15 {
							dirChange = -12.5;	
						}
						if dirChange < -15 {
							dirChange = -25;	
						} 
						if dirChange > -5 and dirChange < 5 {
							dirChange = 0;	
						}
					
					
						beamdir += dirChange
					
					/*
					if angle_difference(pointDir, beamdir) < 0 {
						curvemirror = true;	
					}
					if abs(dirChange) != 0 {
						curve = true;
					}
					*/
					
					//splitsize = 40 - min((abs(sin(degtorad(pointDir - beamdir))) * shothomingspeed * 10),20)
			    } else {
					//splitsize = min(40, splitsize + 4);
				}
			} else {
				/*
				splitsize = 40;	
				if beamseg <= 2 {
					splitsize = 20;	
				}
				if beamseg <= 2 and other.Shot_Beam = 2 {
					splitsize = 20 * global.essencebeamsize;	
				}
				*/
			}
			
			beamxx += lengthdir_x(splitsize, oldbeamdir)
			beamyy += lengthdir_y(splitsize, oldbeamdir)
			
			oldbeamdir = beamdir
			
			//scr_Particle_Burst(obj_Weapon_Trail, spr_Soul_Bit, c_black, c_black,1,0,0,0,0,1,5)
			
			/*
			with instance_create(shxx + beamxx,shyy + beamyy,obj_Item_Trail) {
				direction = 0;
				speed = 0;
						
				sprite_index = spr_Soul_Big_Bit;
				
				if abs(dirChange) = 12.5 {
					image_blend = c_yellow;	
				}
				if abs(dirChange) = 25 {
					image_blend = c_red;	
				}

				size = 0.5
				image_xscale = size;
				image_yscale = size;
		
				life = 15;
				alarm[0] = life;
				alarm[1] = life;
		
				depth = other.depth + 2;
			}*/
			
			//show_debug_message("beamxx: " + string(beamxx) + ", beamyy: " + string(beamyy))
			//show_debug_message("beamdir: " + string(beamdir) + ", dirChange: " + string(dirChange))
			
			if (beamseg != beamtotalsegs || other.Shot_Beam = 3) {
				with instance_create(shxx + beamxx,shyy + beamyy,obj_Beam_Shot) {
					scr_Duplicate_Shot_Stats();
					image_angle = beamdir - dirChange;
					image_xscale = other.shotsize;
					image_yscale = other.shotsize / 2;
					speed = 0;
					beamty = beamtype;
				
					tip = 0;
					if alarm[0] < 1 {
						alarm[0] = 1;
					}
					
					
					var sstr = sprite_get_name(other.sprite_index)
					var ssstr = string_delete(sstr,string_length(sstr) - 4, 5)
					var pspr = ""
					
					//sprite_index = spr_Straight_Beam;
					if dirChange != 0 {
						if dirChange = 12.5 {
							//sprite_index = spr_Beam_Curve_15;
							var pspr = asset_get_index(ssstr + "Curve_15")
						} 
						if dirChange = 25 {
							//sprite_index = spr_Beam_Curve_30;
							var pspr = asset_get_index(ssstr + "Curve_30")
						}
						if dirChange = -12.5 {
							//sprite_index = spr_Beam_Curve_15_Counter;
							var pspr = asset_get_index(ssstr + "Curve_15_Mirror")
						} 
						if dirChange = -25 {
							//sprite_index = spr_Beam_Curve_30_Counter;
							var pspr = asset_get_index(ssstr + "Curve_30_Mirror")
						}
					
						if sprite_exists(pspr) {
							sprite_index = pspr
						} else {
							sprite_index = spr_Laser_Shot;
						}
					}
					
					//// All Laser beam segments must have a sprite in the format of beam_Start, and beam_Tip
					if beamseg = beamtotalsegs {
					
						var pspr = asset_get_index(ssstr + "Tip")
					
						if sprite_exists(pspr) {
							sprite_index = pspr
						} else {
							sprite_index = spr_Laser_Tip;
						}
						shotsize = other.shotsize;
						depth = other.depth - 2;
					}
				
				}
			} else if other.Shot_Beam != 3 {
				with instance_create(shxx + beamxx,shyy + beamyy,obj_Laser_Trail) {
					
					image_xscale = other.shotsize;
					image_yscale = other.shotsize;
					
					//// All Laser beam segments must have a sprite in the format of beam_Start, and beam_Tip
					
					var sstr = sprite_get_name(other.sprite_index)
					var ssstr = string_delete(sstr,string_length(sstr) - 4, 5)
					
					var pspr = asset_get_index(ssstr + "Tip")
					
					depth = -50;
					image_angle = beamdir;
					
					if sprite_exists(pspr) {
						sprite_index = pspr
					} else {
						sprite_index = spr_Laser_Tip;
						depth = -55;
					}
					size = other.shotsize;
					alarm[0] = 10;
				}	
			}
			beamseg++;
			
			if beamstop = 1 and beamseg < beamtotalsegs {
				with(obj_Boss_Parent) {
					if point_distance(shxx + beamxx,shyy + beamyy,x,y) < 40 {
						beamseg = beamtotalsegs	
					}
				}
			}
			
		}
		speed = 0;
	}
}