/// @description Insert description here
// You can write your code in this editor
alarm[0] = 33;

if instance_number(obj_Social_Anxiety_Spirit) < 8 {
	alarm[0] = 1;	
}

var side = choose("left", "right")

var xx = 0;
if side = "right" {
	xx = (room_width / 2) + 800;
} else {
	xx = (room_width / 2) - 800;
}

var yy = (room_height / 2) - 700 + random(1400);

with instance_create(xx,yy, obj_Social_Anxiety_Spirit) {
	scr_Boss_Size_Setup(0.4 + random(0.1));
	
	if side = "left" {
		direction = 0;	
	} else {
		direction = 180;	
	}
	speed = 1.5 + random(2);
	alarm[0] = 1200;
	
	evil = 0
	good = 0
	if scr_Chance(18 / (1 + global.XB[6])) {
		evil = 1;
		sprite_index = spr_Paranoia_Crowd_Spirit_Eye;
		if scr_Chance(4) {
			good = 1;
			evil = 0;
		}
	}
	
	if instance_number(obj_Social_Anxiety_Spirit) < 8 {
		scr_Boss_Teleport();
	}
}

