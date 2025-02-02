// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Beam_Create(shxx, shyy, beamseg, beamdir, curvedir, beamstop, beamxx, beamyy, beamtype, beamtotalsegs, beamspriteindex, beamsize, dirChange, homespeed, splitsize){
		
	var oldbeamdir = beamdir;

	var dir = beamdir;
	image_angle = beamdir;
	speed = 0;
	shot_stats.Shot_Speed = 0;	

	var boss_hits = {};
	var hit_again = -1;
		
	if beamtype = 2 {
		beamspriteindex = global.essencebeamtime / 5
		beamspriteindex = clamp(beamspriteindex, 0, 3);
		
		//var og_beamsize = beamsize;
		
		beamsize = shot_stats.Shot_Size + scr_Wave(0,0.05,0.25,0);
		
		splitsize = 128 * beamsize//(beamsize / og_beamsize)
		
		beamsize = clamp(beamsize, 0.1, 2)
			
		image_xscale = beamsize;
		image_yscale = beamsize;
		speed = 0;
		image_index = beamspriteindex;
			
	}
	
	var _original_shot_stats = shot_stats
	var _top_air_burst_index = array_length(_original_shot_stats.Shot_Air_Burst_Stats) - 1;
				
	while(beamseg <= beamtotalsegs) {
			
		beamdir += beamseg * curvedir;
			
		/////////////////////// Homing //////////////////////////////
			
		if shot_stats.Shot_Homing_Type > 0 {
			var target = noone
			if instance_exists(obj_Boss_Parent) {
				with(obj_Boss_Parent) {
					hit_again = variable_struct_exists(boss_hits, id)//ds_list_find_index(boss_hits, id);
					if !hit_again {
						target = id;
					} else {
						if point_distance(shxx + beamxx,shyy + beamyy, x, y) < 65 {
							variable_struct_set(boss_hits, id, id)
						}
					}
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

		var upxx = lengthdir_x(splitsize, oldbeamdir)
		var upyy = lengthdir_y(splitsize, oldbeamdir)
		beamxx += upxx
		beamyy += upyy

		if shot_stats.Shot_Wander > 0 and beamseg > 8 {
			scr_Create_Beam_Tip(shxx, shyy, beamxx, beamyy, beamsize, beamdir);
			
			beamdir = beamdir + scr_Wave(0, 360, 2, 0);
			beamseg -= 8;
			
			shot_stats.Shot_Wander--;
		}
		
		oldbeamdir = beamdir
			
		/////////////////////// Air Burst //////////////////////////////
		
		// Could probably also include burst in here if we are being honest O.o
			
		if shot_stats.Shot_Air_Burst_Stats != false {
			var near_boss = noone;
			if instance_exists(obj_Boss_Parent) {
				near_boss = instance_nearest(shxx + beamxx,shyy + beamyy, obj_Boss_Parent).id
			}
			var _current_burst_stats = shot_stats.Shot_Air_Burst_Stats[_top_air_burst_index]
			if instance_exists(near_boss) and _top_air_burst_index >= 0 and _current_burst_stats != false {
				var near_dist = point_distance(shxx + beamxx,shyy + beamyy,near_boss.x,near_boss.y) - 100
				var sprd = _current_burst_stats.Spread
				if near_dist <= _current_burst_stats.Range {
					dir = -sprd / 2;
					
					var _split_beam_size = shot_stats.Shot_Size * _current_burst_stats.Burst_Size
					var _split_beam_split_size = splitsize * _current_burst_stats.Burst_Size
					
					scr_Create_Beam_Tip(shxx, shyy, beamxx, beamyy, beamsize, beamdir);
					beamxx -= upxx
					beamyy -= upyy
					
					beamxx += lengthdir_x(splitsize, oldbeamdir) * _current_burst_stats.Burst_Size
					beamyy += lengthdir_y(splitsize, oldbeamdir) * _current_burst_stats.Burst_Size
					
					repeat(_current_burst_stats.Amount) {
						
						if sprd < 0 {
							dir = random(sprd) - (sprd / 2)
						}
						
						_current_burst_stats.Shot_Hit_Again = 1
						
						with instance_create(shxx + beamxx,shyy + beamyy,obj_Beam_Shot) {
							var _v_shot_air_burst_stats = _current_burst_stats
					
							shot_stats = scr_Duplicate_Shot_Stats(_v_shot_air_burst_stats, variable_clone(_original_shot_stats), dir);
							
							if variable_struct_exists(_v_shot_air_burst_stats, "Shot_Life_Span") {
								_v_shot_air_burst_stats.Shot_Life_Span = _original_shot_stats.Shot_Life_Span
							}
							if variable_struct_exists(_v_shot_air_burst_stats, "Burst_Life_Span") {
								_v_shot_air_burst_stats.Burst_Life_Span = 1;
							}
							
							scr_Shot_Burst_Stats(_v_shot_air_burst_stats);
							shot_stats.Shot_Burst_Stats = _original_shot_stats.Shot_Burst_Stats;
							shot_stats.Shot_Extra_Stats = _original_shot_stats.Shot_Extra_Stats;
							if _top_air_burst_index > 0 {
								array_delete(shot_stats.Shot_Air_Burst_Stats, _top_air_burst_index, 1)
								/*shot_stats.Shot_Air_Burst_Stats = [];
								Print_DF("_original_shot_stats")
								Print_DF(_original_shot_stats)
								for(var i = 0; i < _top_air_burst_index; i++) {
									array_insert(shot_stats.Shot_Air_Burst_Stats, i, _original_shot_stats.Shot_Air_Burst_Stats[i])
								} */
							} else {
								shot_stats.Shot_Air_Burst_Stats = false;	
							}
							
							shot_stats.Shot_Hit_Again = 0;
							
							scr_Beam_Create(shxx, shyy, beamseg, beamdir + dir, curvedir, beamstop, beamxx, beamyy, beamtype, 
											beamtotalsegs, beamspriteindex, _split_beam_size, dirChange, homespeed, _split_beam_split_size)
						}
							
					    dir += _current_burst_stats.Spread;
					}
					exit;
				}
			}	
		}
		
		//var _par_power = shot_stats.Shot_Power;
		shot_stats.Shot_Hit_Again = 0;
		
		if (beamseg != beamtotalsegs || beamtype = 3) {
			with instance_create(shxx + beamxx,shyy + beamyy,obj_Beam_Shot) {

				shot_stats = scr_Duplicate_Shot_Stats(_original_shot_stats, _original_shot_stats);
				
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
				
					
				//var sstr = sprite_get_name(other.sprite_index)
				var sstr = shot_stats.Shot_Sprite
				var ssstr = string_delete(sstr,string_length(sstr) - 4, 5)
				var pspr = ""

				sprite_index = asset_get_index(ssstr + "Shot")

				if dirChange != 0 {
					var absChange = abs(dirChange);
						
					var pspr = ssstr + "Curve_" + string(absChange);
						
					if dirChange < 0 {
						image_yscale = image_yscale * -1;
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
					shot_stats.Shot_Size = beamsize
					depth = other.depth - 2;
				}
				
			}
		} else if beamtype != 3 {
			scr_Create_Beam_Tip(shxx, shyy, beamxx, beamyy, beamsize, beamdir);
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