/// @description Insert description here
// You can write your code in this editor
dir = -shotburstspread / 2;
repeat(shotburstamount) {
	with instance_create(x,y,obj_Lesser_Soul_Shot) {
		shotlifespan = other.shotlifespan / 2;
				
		scr_Duplicate_Shot_Stats();
		shotsize = other.shotsizemax;
		image_xscale = shotsize;
		image_yscale = shotsize;
		sprite_index = other.shotduplicatesprite;
		shotformshow = 0;
		image_alpha = 1;
		shothomingtype = 0;
		shotspeed = other.shotminspeed * 7;
		speed = shotspeed;
		shotlifespan = other.shotlifespan / 2;
		alarm[0] = shotlifespan;
		shottimer = shotlifespan;
		
		shotsizemax = shotsize;
		
		shotSizeRelation = 1;
		if instance_exists(obj_Boss_Parent) {
			direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x, instance_nearest(x,y,obj_Boss_Parent).y);	
		}
	}
	dir += shotburstspread / shotburstamount;
}
shotbursttype = 0;

scr_Particle_Burst(obj_Gravity_Particle, spr_Soul_Big_Bit, make_color_rgb(89, 0, 255), make_color_rgb(255, 73, 253), 10, 10, 270, 360);
