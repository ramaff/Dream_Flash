// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_V09(){
	if global.V[9] >= 1 {
		if shot_stats.Essence > 0 {
			var _ex_ess = shot_stats.Essence * global.V[9];
			var _pot = 0
			while(_ex_ess > 0) {
				_pot = min(_ex_ess, 10)
				with instance_create(x,y,obj_Blood_Lust_Flow) {
					speed = 4 + random(4);
					direction = random(360);
					size = sqrt(_pot) / 5;
					maxsize = size;
					image_xscale = size;
					image_yscale = size;
					image_blend = c_red
				}
				_ex_ess -= _pot;
			}
		}
		
	}
}