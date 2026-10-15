
event_inherited()

if scr_Room_Leavable() {
    scr_Adjacent_Room_Cloud();
}

if InputMouseMoved(){
    no_mouse = 0
}
else if InputDeviceGetAnyGamepadConnected(){
	no_mouse++
}