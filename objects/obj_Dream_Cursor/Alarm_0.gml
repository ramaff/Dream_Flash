/// @description Insert description here
// You can write your code in this editor
if !InputDeviceGetAnyGamepadConnected() {
	with(obj_Menu_Button_Parent) {
		event_user(1)	
	}
}