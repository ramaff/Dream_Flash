/// @description Insert description here
// You can write your code in this editor

scr_Sound_Effect(sd_Boss_Kill);

with instance_create(x,y, obj_Dead_Boss) {
	difficulty = -1;
	boss_palette = other.boss_palette;
	boss_palette_index = other.boss_palette_index;
	image_xscale = other.bossSize;
	image_yscale = other.bossSize;
	sprite_index = other.sprite_index;
	image_index = 0;
	
	sprite_index = other.death_sprite	
	alarm[0] = 30;
	speed = 15;
	direction = other.deadknockdirection;
		
	if hspeed < 0 {
		image_xscale = image_xscale * -1;	
	}
		
}