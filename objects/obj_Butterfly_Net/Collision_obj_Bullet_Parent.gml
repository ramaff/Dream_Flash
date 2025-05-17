/// @description Insert description here
// You can write your code in this editor

var _soul = noone;

if instance_exists(shot_stats.Shot_Follow_Origin) {
	_soul = shot_stats.Shot_Follow_Origin
} else {
	exit;	
}



with(other) {
	repeat(4) {
		var ddir = direction - 270 + random(180);
		scr_Particle_Burst(obj_Friction_Part, spr_Soul_Bit, c_white, c_white, 1, 16 + random(8), ddir, 0, 0, image_xscale + random(0.1), 20 + random(10))
	}
	var poww = 20;
	if bulletpower <= poww {
		var xxx = x;
		var yyy = y;
		with(_soul) {
			scr_Optimism_Shot(xxx,yyy);
		}
		instance_destroy();	
	} else {
		bulletpower -= poww;
		bulletsize = (bulletpower / bulletpowermax);
	}
	//instance_destroy();
}
