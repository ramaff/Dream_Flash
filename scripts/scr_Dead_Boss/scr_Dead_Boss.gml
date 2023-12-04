// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Dead_Boss(_diff = difficulty){

	with instance_create(x,y, obj_Dead_Boss) {
		difficulty = _diff
		image_xscale = other.bossSize;
		image_yscale = other.bossSize;
		sprite_index = other.sprite_index;
		image_index = other.image_index;
	
		if other.death_sprite != noone {
			sprite_index = other.death_sprite	
		}
		alarm[0] = 30;
		speed = 15;
		direction = other.deadknockdirection;
		
		if hspeed < 0 {
			image_xscale = image_xscale * -1;	
		}
		
	}

}