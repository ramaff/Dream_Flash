// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Beam_Create(shxx,shyy){
	if other.Shot_Beam = 2 {
		shotdamage = false;
		if other.sWeaponTicker mod 3 = 0 { 
			shotdamage = true;	
		} else {
			other.Shot_Power = 0;
		}
	}	
	if other.Shot_Type = obj_Beam_Shot {
		
		
		var beamseg = 1;
		var beamdir = direction;
		var curvedir = other.Shot_Beam_Curve * (-1 + random(2))
		var beamstop = other.Shot_Melee;
		
		//beamdir = 0;
		
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
		beamtotalsegs = 5;
		
		var beamspriteindex = 0;
		var beamsize = shotsize;
		
		splitsize = 64;
		var dirChange = 0;
		
		var boss_hits = {};
		
		//show_debug_message("/nbeam start:\n--------------")
		
		var homespeed = shothomingspeed * 3;
		var hit_again = -1;
		
		splitsize = 128 * shotsize;
		/*
		if beamseg <= 2 and other.Shot_Beam = 2 {
			splitsize = 128 * global.essencebeamsize;	
		}
		*/
		
		if other.Shot_Beam = 2 {
			beamspriteindex = global.essencebeamtime / 5
			beamspriteindex = clamp(beamspriteindex, 0, 3);
			beamsize = shotsize + scr_Wave(0,0.05,0.25,0);
			
			image_xscale = beamsize;
			image_yscale = beamsize;
			speed = 0;
			image_index = beamspriteindex;
			
		}
				
		while(beamseg <= beamtotalsegs) {
			
			beamdir += beamseg * curvedir;
			
			if shothomingtype > 0 {
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
					dirChange = round(dirChange / 5) * 5;
					dirChange = clamp(dirChange, -15, 15);
					
					beamdir += dirChange
			    } 
			} 
			
			beamxx += lengthdir_x(splitsize, oldbeamdir)
			beamyy += lengthdir_y(splitsize, oldbeamdir)
			//show_debug_message(string(lengthdir_x(splitsize, oldbeamdir)) + ", " + string(lengthdir_y(splitsize, oldbeamdir)));
			
			oldbeamdir = beamdir

			
			//show_debug_message("beamxx: " + string(beamxx) + ", beamyy: " + string(beamyy))
			//show_debug_message("beamdir: " + string(beamdir) + ", dirChange: " + string(dirChange))
			
			if (beamseg != beamtotalsegs || other.Shot_Beam = 3) {
				with instance_create(shxx + beamxx,shyy + beamyy,obj_Beam_Shot) {
					
					//show_debug_message(string(beamxx) + ", " + string(beamyy));
					scr_Duplicate_Shot_Stats();
					image_angle = beamdir - dirChange;
					image_xscale = beamsize;
					image_yscale = beamsize;
					speed = 0;
					image_index = beamspriteindex;
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
						var absChange = abs(dirChange);
						
						var pspr = ssstr + "Curve_" + string(absChange);
						
						if dirChange < 0 {
							image_yscale = image_yscale * -1;
							//pspr = pspr + "_Mirror"	
						}
						
						pspr = asset_get_index(pspr);
					
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
						shotsize = beamsize
						depth = other.depth - 2;
					}
				
				}
			} else if other.Shot_Beam != 3 {
				with instance_create(shxx + beamxx,shyy + beamyy,obj_Laser_Trail) {
					
					image_xscale = beamsize;
					image_yscale = beamsize;
					
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
					size = beamsize;
					alarm[0] = other.shotlifespan;
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