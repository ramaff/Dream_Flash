/// @description Insert description here
// You can write your code in this editor


alarm[1] = 2 + irandom(2);

var shottrailarea = 80;

var xx = random(shottrailarea) - (shottrailarea / 2);
var yy = random(shottrailarea) - (shottrailarea / 2);

with instance_create(x + xx,y + yy,obj_Field_Trail) {
		
	sprite_index = spr_Soul_Big_Bit;
		
	depth = other.depth + 5;
		
	image_blend = other.fieldColor;

	size = other.image_xscale * (0.75 + random(0.5));
	image_xscale = size;
	image_yscale = size;
		
	life = 45 + irandom(60);
	alarm[0] = life;

	speed = 0.75 + random(0.75);
	direction = random(360);
}