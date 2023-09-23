// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Beam_Create(shxx, shyy, beamseg, beamdir, curvedir, beamstop, beamxx, beamyy, beamtype, beamtotalsegs, beamspriteindex, beamsize, dirChange, homespeed, splitsize){
		
	var oldbeamdir = beamdir;

	dir = beamdir;
	image_angle = beamdir;
	speed = 0;
	shotspeed = 0;	

	var boss_hits = {};
	var hit_again = -1;
		
	if beamtype = 2 {
		beamspriteindex = global.essencebeamtime / 5
		beamspriteindex = clamp(beamspriteindex, 0, 3);
		
		var og_beamsize = beamsize;
		
		beamsize = shotsize + scr_Wave(0,0.05,0.25,0);
		
		splitsize = splitsize * (beamsize / og_beamsize)
			
		image_xscale = beamsize;
		image_yscale = beamsize;
		speed = 0;
		image_index = beamspriteindex;
			
	}
				
	while(beamseg <= beamtotalsegs) {
			
		beamdir += beamseg * curvedir;
			
		/////////////////////// Homing //////////////////////////////
			
		if shothomingtype > 0 {
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
		
			
		beamxx += lengthdir_x(splitsize, oldbeamdir)
		beamyy += lengthdir_y(splitsize, oldbeamdir)
		
		if shotwander > 0 and beamseg > 8 {
			scr_Create_Beam_Tip(shxx, shyy, beamxx, beamyy, beamsize, beamdir);
			
			beamdir = beamdir + scr_Wave(0, 360, 2, 0);
			beamseg -= 8;
			
			shotwander--;
		}
		
		oldbeamdir = beamdir
			
		/////////////////////// Air Burst //////////////////////////////
		
		// Could probably also include burst in here if we are being honest O.o
			
		if shotairburststats != false {
			var burstIndex = array_length(shotairburststats) - 1;
			var near_boss = noone;
			if instance_exists(obj_Boss_Parent) {
				near_boss = instance_nearest(shxx + beamxx,shyy + beamyy, obj_Boss_Parent).id
			}
			if instance_exists(near_boss) and burstIndex >= 0 and shotairburststats[burstIndex] != false {
				var near_dist = point_distance(shxx + beamxx,shyy + beamyy,near_boss.x,near_boss.y) - 50
				var sprd = shotairburststats[burstIndex].Spread
				if near_dist <= shotairburststats[burstIndex].Range {
					dir = -sprd / 2;
					shotlifespan = shotlifespan * 0.6;
					shothitagain = 1
					
					repeat(shotairburststats[burstIndex].Amount) {
						
						if sprd < 0 {
							dir = random(sprd) - (sprd / 2)
						}
						
						with instance_create(shxx + beamxx,shyy + beamyy,obj_Beam_Shot) {
						//with instance_create(shxx, shyy,obj_Beam_Shot) {
							
							//Print_DF("hitagain: " + string(other.shothitagain))

							scr_Duplicate_Shot_Stats();
							
							var vshotairburststats = other.shotairburststats[burstIndex]
							//Print_DF("vshotburststats: " + string(vshotairburststats))
							scr_Shot_Burst_Stats(vshotairburststats);
							//Print_DF("shotpower: " + string(shotpower))
							shotburststats = other.shotburststats;
							shotextrastats = other.shotextrastats;
							if burstIndex > 0 {
								shotairburststats = [];
								for(var i = 0; i <= burstIndex-1; i++) {
									array_insert(shotairburststats,i,other.shotairburststats[i])
								}
							} else {
								shotairburststats = false;	
							}
							
							shothitagain = 0;
							shotburstpower = shotpower
							
							splitsize = 128 * shotsize;
							beamsize = shotsize;
							
							scr_Beam_Create(shxx, shyy, beamseg, beamdir + other.dir, curvedir, beamstop, beamxx, beamyy, beamtype, beamtotalsegs, beamspriteindex, beamsize, dirChange, homespeed, splitsize)
						}
							
					    dir += shotairburststats[burstIndex].Spread;
					}
					//scr_Create_Beam_Tip(shxx, shyy, beamxx, beamyy, beamsize, beamdir);
					scr_Create_Beam_Tip(shxx, shyy, beamxx, beamyy, beamsize, beamdir);
					//instance_destroy();
					exit;
				}
			}	
		}
		
		if (beamseg != beamtotalsegs || beamtype = 3) {
			with instance_create(shxx + beamxx,shyy + beamyy,obj_Beam_Shot) {

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