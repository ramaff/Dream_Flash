/// @description Insert description here
// You can write your code in this editor
if (InputReleased(INPUT_VERB.SHOOT) || InputReleased(INPUT_VERB.WARP)) and !instance_exists(obj_State_Menu) and !mouse_check_button_released(mb_left) and !mouse_check_button_released(mb_right) {
	event_user(0)	
}