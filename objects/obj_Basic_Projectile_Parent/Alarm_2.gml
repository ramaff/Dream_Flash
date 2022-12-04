/// @description Insert description here
// You can write your code in this editor
if global.gameParticles > 0 {

	alarm[2] = shottrailfrequency / global.gameParticles;

	/*
	if shottrail = 1 {

		var psize = 0.1 + (shotsize);

		psize = (3 * psize / 4) + random(psize / 4);

		part_type_size(obj_Particle_Control.pshottrailtype,psize,0,-(psize/shottraillife),0);
	
		part_type_sprite(obj_Particle_Control.pshottrailtype,shottrailsprite,0,0,1);
		part_type_alpha2(obj_Particle_Control.pshottrailtype,1,1);

		//part_type_color1(obj_Particle_Control.pshottrailtype, c_white);

		part_type_life(obj_Particle_Control.pshottrailtype,shottraillife/2,shottraillife);
		part_type_color_mix(obj_Particle_Control.pshottrailtype, shottrailcolor1, shottrailcolor2);

		part_emitter_region(global.psystem,global.pemitter, x - shottrailarea, x + shottrailarea, y - shottrailarea, y + shottrailarea,ps_shape_ellipse,ps_distr_linear);
		part_emitter_burst(global.psystem, global.pemitter, obj_Particle_Control.pshottrailtype, 1);
	}
	*/
/*
	if shottrail > 0 and shottrail < 3 {
	
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

		}
	
	} */

	if shottrail > 0 and shottrail < 3 {
	
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
