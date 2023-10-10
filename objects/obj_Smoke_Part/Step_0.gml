/// @description Insert description here
// You can write your code in this editor

if alarm[0] <= 15 {
	var _split = size / 15
	image_xscale -= _split;
	image_yscale = image_xscale;
	image_alpha -= _split
}

friction = speed / (life / 3);

/*
with instance_create(x,y,obj_Particle_Parent_Front_Mult) {
	sprite_index = other.sprite_index;
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
	image_alpha = 0.1;
	alarm[0] = 1;
}