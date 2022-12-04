// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Masked_Spirit_Sprite(baseSpr, attackSpr){
	if bossActiveAttack[1] != 0 { 
		sprite_index = attackSpr;
		if image_index >= 7 and bossActiveAttackDuration[1] > 10 {
			image_index = 7;	
		}
	} else { // Default
		sprite_index = baseSpr;	
		if currentphase = 2 {
			sprite_index = attackSpr;
			image_index = 0;
		}
	}
}