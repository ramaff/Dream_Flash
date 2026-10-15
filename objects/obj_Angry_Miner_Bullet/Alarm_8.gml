/// @description Insert description here
// You can write your code in this editor

if bpart = 2 {
	
	var xx = bpartarea / 2 - random(bpartarea);
	var yy = bpartarea / 2 - random(bpartarea);
	
	with instance_create_depth(x + xx,y + yy,depth+2,obj_Weapon_Trail) {
		
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

alarm[8] = bpartfrequency;