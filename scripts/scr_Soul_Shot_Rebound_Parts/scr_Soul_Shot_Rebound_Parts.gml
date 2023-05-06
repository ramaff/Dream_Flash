// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Shot_Rebound_Parts(){
	repeat(4) {
		var ddir = other.direction - 270 + random(180);
		scr_Particle_Burst(obj_Friction_Part, spr_Soul_Bit, c_white, c_white, 1, 16 + random(8), ddir, 0, 0, image_xscale + random(0.1), 20 + random(10))
	}
}