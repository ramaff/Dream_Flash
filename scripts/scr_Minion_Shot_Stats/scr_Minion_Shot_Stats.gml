// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Minion_Shot_Stats(){
	minion_xx = 0;
	minion_yy = 0;
	
	minion_dir = 0;
	minion_speed = 0;
	minion_accuracy = 1; 
	minion_height = 0;
	minion_attack_cooldown = 90;
	
	champ = other.champ;
	boss_palette = other.boss_palette;
	boss_palette_index = other.boss_palette_index;
	
	bossmaxhealth2 = 0;
	
	minion_spawn_animation = noone;
	
}