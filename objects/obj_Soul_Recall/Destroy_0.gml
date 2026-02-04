/// @description Insert description here
// You can write your code in this editor

global.soul_recall++;
global.soul_xp++;
		
scr_Sound_Effect(snd_Recall);

/*
with instance_create_depth(x - 20 + random(40),y - 20 + random(40),depth-50,obj_recall_up_ind) {
	sprite_index = other.sprite_index;	
	speed = 3 + random(3);
	direction = 60 + random(60);
	alarm[0] = 50 + random(20);
	
}
*/