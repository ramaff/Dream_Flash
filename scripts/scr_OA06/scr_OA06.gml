// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OA06(){
// Location: Shot Creation Script

	if global.OA[6] >= 1 {
	    //if obj_Soul_Parent.senergy >= 50 {
		var chance = 40 / (1 + global.OA[6]);
		if scr_Chance(chance) {
			shotmiracle += 1;
			
			shotlifespan = shotlifespan * 2;
			alarm[0] = shotlifespan;
		    shottimer = shotlifespan;
			//speed = shotspeed;
			
			shotspeed = shotspeed * 0.55;
			speed = shotspeed;
			
			if shothomingtype = 0 {
		        shothomingtype = 1;
			}
	        if shothomingrange < 300 {
	            shothomingrange = 300
	        } 
			
			shotsize += 0.1;
			image_xscale = shotsize;
			image_yscale = shotsize;
			
		}
	}
}