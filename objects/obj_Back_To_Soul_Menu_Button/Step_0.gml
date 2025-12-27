/// @description Insert description here
// You can write your code in this editor
if (InputReleased(INPUT_VERB.SHOOT) || InputReleased(INPUT_VERB.WARP)) and instance_exists(obj_State_Menu) {
	event_user(0)	
}