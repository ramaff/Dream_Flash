// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Attack_Sprite(sprite, attackEndDuration, attackLoopStartFrame, attackLoopEndFrame) {
	sprite_index = sprite;
	if bossActiveAttackDuration[1] > attackEndDuration and image_index > attackLoopEndFrame {
		image_index = attackLoopStartFrame;
	}
}