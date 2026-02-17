/// @description Insert description here
// You can write your code in this editor
/*if !InputDeviceGetAnyGamepadConnected() {
	exit;	
} */

with (target_button) {
	if object_index == obj_Recollection_Butt {
		scr_Scroll_Reco_Menu(id)
	}
	if (object_index == obj_Option_Button and category = 2) {
		scr_Scroll_Reco_Menu(id, false)
	}
	event_user(0);
}