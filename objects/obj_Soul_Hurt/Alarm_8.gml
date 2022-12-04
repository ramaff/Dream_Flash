/// @description Insert description here
// You can write your code in this editor

/*
if bpart = 1 {
	var psize = 0.1 + bulletsize;

	psize = (psize / 2) + random(psize / 2);

	part_type_size(ptype,psize,0,-(psize/bpartlife),0);
	
	part_emitter_region(global.psystem,global.pemitter, x - bpartarea, x + bpartarea, y - bpartarea, y + bpartarea,ps_shape_ellipse,ps_distr_linear);
	part_emitter_burst(global.psystem, global.pemitter, ptype, 1);
}
*/
if global.gameParticles > 0 {
	if bpart > 0 {
	
		var xx = bpartarea / 2 - random(bpartarea);
		var yy = bpartarea / 2 - random(bpartarea);
	
		with instance_create(x + xx,y + yy,obj_Weapon_Trail) {
		
			depth = other.depth + 2;
		
			sprite_index = other.bpartsprite;
		
			image_angle = other.image_angle;

			size = other.bulletsize;
			image_xscale = size;
			image_yscale = size;
		
			life = other.bpartlife;
		
			image_blend = other.bpartcolor1;
		
			alarm[0] = life;

		}
	
	}

	alarm[8] = bpartfrequency / global.gameParticles;
}
