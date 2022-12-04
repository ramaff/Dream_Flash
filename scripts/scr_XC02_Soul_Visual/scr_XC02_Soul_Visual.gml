// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_XC02_Soul_Visual(){
	if global.XC[2] > 0 {
		var shottrailarea = 120;
		
		var xx = random(shottrailarea) - (shottrailarea / 2);
		var yy = random(shottrailarea) - (shottrailarea / 2);
	
		with instance_create(x + xx,y + yy,obj_Weapon_Trail) {
		
			sprite_index = spr_Soul_Big_Bit;
		
			depth = other.depth - 1;
		
			image_blend = merge_colour(c_purple, c_black, random(1));

			size = 0.5;
			image_xscale = size;
			image_yscale = size;
		
			life = 15 + random(10);
			alarm[0] = life;
		
			direction = point_direction(x,y,other.x,other.y);
			speed = point_distance(x,y,other.x,other.y) / life;

		}
	}
}