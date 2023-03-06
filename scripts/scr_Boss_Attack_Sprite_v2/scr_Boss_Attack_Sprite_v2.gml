// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Attack_Sprite_v2(sprite, attackHoldFrame, attackLoopStartFrame, attackLoopEndFrame, attackEndDuration) {
	sprite_index = sprite;
	if activeAttackDelay > 0 {
		if image_index > attackHoldFrame {
			image_index = attackHoldFrame
		}
	} else {
		if image_index < attackHoldFrame + 1 {
			image_index = attackHoldFrame + 1;	
		}
	}
	show_debug_message("activeAttackDuration: " + string(activeAttackDuration))
	show_debug_message("attackEndDuration: " + string(attackEndDuration))
	if activeAttackDuration > attackEndDuration and image_index >= attackLoopEndFrame + 1 {
		image_index = attackLoopStartFrame;   
	}
}
