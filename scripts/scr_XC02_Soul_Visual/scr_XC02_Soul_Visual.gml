// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_XC02_Soul_Visual(){
	
	if global.XC[2] > 0 {
		var _void_time = (current_time * 0.001) mod 9
		
		if _void_time < 4 {
			var _suck_multiplier = _void_time / 3
			if _void_time > 3 {
				_suck_multiplier = 4 - _void_time
			}
			
			var _shot_trail_area = 100 + (200 * _suck_multiplier);
		 
			var xx = random(_shot_trail_area) - (_shot_trail_area / 2);
			var yy = random(_shot_trail_area) - (_shot_trail_area / 2);
	
			with instance_create(x + xx,y + yy,obj_Black_Hole_Part) {
		
				sprite_index = spr_Soul_Big_Bit;
		
				depth = other.depth - 1;
		
				image_blend = merge_colour(make_color_rgb(50, 0, 100), make_color_rgb(50, 0, 250), random(1));

				size = 0.1 + 0.6 * _suck_multiplier;
				image_xscale = size;
				image_yscale = size;
		
				life = 15 + random(10);
				alarm[0] = life;
				
				target = other.id;

			}
		}
	}
}