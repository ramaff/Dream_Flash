/// @description Insert description here
// You can write your code in this editor
alarm[1] = 10 + irandom(20);


var _shot_trail_area = 80;

var xx = random(_shot_trail_area) - (_shot_trail_area / 2);
var yy = random(_shot_trail_area) - (_shot_trail_area / 2);

with instance_create(x + xx,y + yy,obj_Field_Trail) {
		
	sprite_index = spr_White_Diamond;
		
	depth = other.depth + 5;
		
	image_blend = other.fieldColor;

	size = other.image_xscale * (0.4 + random(0.3));
	image_xscale = size;
	image_yscale = size;
		
	life = 45 + irandom(75);
	alarm[0] = life;

	speed = 0.1 + random(0.2);
	direction = random(360);
}
