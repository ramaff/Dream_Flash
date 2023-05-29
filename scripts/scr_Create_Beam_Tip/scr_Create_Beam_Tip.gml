// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Create_Beam_Tip(shxx, shyy, beamxx, beamyy, beamsize, beamdir){

	with instance_create(shxx + beamxx,shyy + beamyy,obj_Laser_Tip) {
					
		image_xscale = beamsize * 0.8;
		image_yscale = beamsize * 0.8;
					
		//// All Laser beam segments must have a sprite in the format of beam_Start, and beam_Tip
					
		var sstr = sprite_get_name(other.sprite_index)
		var ssstr = string_delete(sstr,string_length(sstr) - 4, 5)
					
		var pspr = asset_get_index(ssstr + "Tip")
					
		depth = other.depth - 10;
		image_angle = beamdir;
					
		if sprite_exists(pspr) {
			sprite_index = pspr
		} else {
			sprite_index = spr_Laser_Tip;
			depth = -55;
		}
		size = beamsize;
		alarm[0] = other.shotlifespan;
		alarm[0] = clamp(alarm[0], 1, 30)
	}	

}