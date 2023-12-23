/// @description Insert description here
// You can write your code in this editor
if global.gameParticles > 0 {

	alarm[2] = shottrailfrequency / global.gameParticles;

	if shottrail > 0 and shottrail < 3 {
	
		var xx = random(shottrailarea) - (shottrailarea / 2);
		var yy = random(shottrailarea) - (shottrailarea / 2);
		
		var _speed = 0;
		var _direction = 0;
	
		with instance_create(x + xx,y + yy, shottrailtype) {
		
			sprite_index = other.shottrailsprite;
		
			image_angle = other.image_angle;
			depth = other.depth - 1;
		
			image_blend = merge_colour(other.shottrailcolor1, other.shottrailcolor2, random(1));

			size = other.shotsize;
			image_xscale = size;
			image_yscale = size;
		
			life = other.shottraillife;
			alarm[0] = life;
			
			speed = other.shottrailspeed
			direction = other.shottraildirection
			
			base_direction = direction

		}
	
	} 
	
	scr_A07_Particles();

	if shottrail = 3 {
	
		var xx = random(shottrailarea) - (shottrailarea / 2);
		var yy = random(shottrailarea) - (shottrailarea / 2);
	
		with instance_create(x + xx,y + yy, shottrailtype) {
		
			sprite_index = other.shottrailsprite;
		
			image_angle = other.image_angle;
			depth = other.depth - 1;
		
			image_blend = merge_colour(other.shottrailcolor1, other.shottrailcolor2, random(1));

			size = other.shotsize;
			image_xscale = size;
			image_yscale = size;
		
			life = other.shottraillife;
			alarm[0] = life;
		
			direction = point_direction(x,y,other.x,other.y);
			speed = point_distance(x,y,other.x,other.y) / life;

		}
	
	}
	
}	
