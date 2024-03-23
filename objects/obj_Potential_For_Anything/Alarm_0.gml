/// @description Insert description here
// You can write your code in this editor
alarm[0] = 5 + random(15);


var _shot_trail_area = 80;

var xx = random(_shot_trail_area) - (_shot_trail_area / 2);
var yy = random(_shot_trail_area) - (_shot_trail_area / 2);

with instance_create(x + xx,y + yy,obj_Field_Trail) {
		
	sprite_index = spr_Soul_Big_Bit;
		
	depth = other.depth + 5;
		
	image_blend = other.color;

	size = other.image_xscale * (0.75 + random(0.5));
	image_xscale = size;
	image_yscale = size;
		
	life = 45 + irandom(60);
	alarm[0] = life;

	speed = 0.75 + random(0.75);
	direction = random(360);
}

/*
with instance_create(x,y,obj_Item_Spark) {
alarm[0] = 30 + random(90);
speed = 0.1 + random(0.8);
direction = random(360);
}
