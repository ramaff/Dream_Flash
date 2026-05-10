// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Super_Bleed_Boss(_boss, _potency, _frequency, _ticks){

	with instance_create_depth(_boss.x - 20 + random(40), _boss.y - 20 + random(40), _boss.depth - 1, obj_Deep_Bleed_Mark) {
		target = _boss;
		potency = _potency;
		frequency = _frequency;
		ticks = _ticks;
		
		xx = -30 + random(60);
		yy = -30 + random(60);
		image_xscale = 0.5;
		image_yscale = 0.5;
		image_angle = -22.5 + random(45);
		
		alarm[0] = frequency
	}

}