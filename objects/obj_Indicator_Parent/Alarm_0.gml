if !InputDeviceGetAnyGamepadConnected() {
	with(obj_Menu_Button_Parent) {
		event_user(1)	
	}
	with(obj_Pause_Parent) {
		event_user(1)	
	}
} else {
	event_user(1);
}