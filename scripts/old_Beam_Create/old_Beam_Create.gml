// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function old_Beam_Create(shxx,shyy){
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
		
		dir = beamdir;
		image_angle = beamdir;
		speed = 0;
		shotspeed = 0;
		
		var beamtype = other.Shot_Beam;
		var splitsize = 40;
		var beamtotalsegs = other.Shot_Beam_Count;
		
		var boss_hits = {};
				
		while(beamseg <= beamtotalsegs) {
			
			beamdir += beamseg * curvedir;
			
			if shothomingtype > 0 {
				var target = noone
				if instance_exists(obj_Boss_Parent) {
				    with(obj_Boss_Parent) {
						//if ds_exists(boss_hits, ds_type_list) {
					        var hit_again = variable_struct_exists(boss_hits, id)//ds_list_find_index(boss_hits, id);
							if !hit_again {
								target = id;
							} else {
								if point_distance(shxx + beamxx,shyy + beamyy, x, y) < 50 {
									variable_struct_set(boss_hits, id, id)
								//ds_list_add(boss_hits, id)
								}
							}
						//}
				    }
				}
			    if target != noone {
    
			        var pointDir = point_direction(shxx + beamxx,shyy + beamyy,target.x,target.y);
			        beamdir += sin(degtorad(pointDir - beamdir)) * shothomingspeed;
					
					splitsize = 40 - min((abs(sin(degtorad(pointDir - beamdir))) * shothomingspeed * 10),20)
			    } else {
					splitsize = min(40, splitsize + 4);
				}
			} else {
				splitsize = 40;	
				if beamseg <= 2 {
					splitsize = 20;	
				}
				if beamseg <= 2 and other.Shot_Beam = 2 {
					splitsize = 20 * global.essencebeamsize;	
				}
			}
			
			beamxx += lengthdir_x(splitsize, beamdir)
			beamyy += lengthdir_y(splitsize, beamdir)
			
			//show_debug_message("beamxx: " + string(beamxx) + ", beamyy: " + string(beamyy))
			
			if (beamseg != beamtotalsegs || other.Shot_Beam = 3) {
				with instance_create(shxx + beamxx,shyy + beamyy,obj_Beam_Shot) {
					scr_Duplicate_Shot_Stats();
					image_angle = beamdir;
					image_xscale = splitsize * 2;
					speed = 0;
					beamty = beamtype;
				
					tip = 0;
					if alarm[0] < 1 {
						alarm[0] = 1;
					}
					
					
					//// All Laser beam segments must have a sprite in the format of beam_Start, and beam_Tip
					if beamseg = beamtotalsegs {
						var sstr = sprite_get_name(other.sprite_index)
						var ssstr = string_delete(sstr,string_length(sstr) - 4, 5)
					
						var pspr = asset_get_index(ssstr + "Tip")
					
						if sprite_exists(pspr) {
							sprite_index = pspr
						} else {
							sprite_index = spr_Laser_Tip;
						}
						shotsize = other.shotsize;
						image_xscale = other.shotsize;
						image_yscale = other.shotsize;
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