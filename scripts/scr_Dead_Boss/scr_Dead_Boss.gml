// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Dead_Boss(_diff = difficulty){

	//Print_DF(sprite_get_name(death_sprite))
	//Print_DF(sprite_get_name(boss_palette))
	if is_undefined(death_sprite) {
		scr_Soul_Currency_Add();

		scr_Sound_Effect(sd_Boss_Kill);

		scr_Particle_Burst(obj_Wind_Particle, spr_Soul_Big_Bit, c_white, c_white, 8, 16, 0, 45, 0, 0.9, 35, true)
		scr_Particle_Burst(obj_Wind_Particle, spr_Soul_Big_Bit, c_white, c_white, 8, 12, 22.5, 45, 0, 0.7, 45, true)

	} else {
		with instance_create(x,y, obj_Dead_Boss) {
			difficulty = _diff
			boss_palette = other.boss_palette;
			boss_palette_index = other.boss_palette_index;
			image_xscale = other.bossSize;
			image_yscale = other.bossSize;
			sprite_index = other.sprite_index;
			image_index = other.image_index;
	
			sprite_index = other.death_sprite	
			alarm[0] = 30;
			speed = 15;
			direction = other.deadknockdirection;
		
			if hspeed < 0 {
				image_xscale = image_xscale * -1;	
			}
		
		}
	}

}