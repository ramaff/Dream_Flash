/// @description Insert description here
// You can write your code in this editor

if !InputDeviceGetAnyGamepadConnected() {
	if obj_Indicator_Parent.x > (x-16) and obj_Indicator_Parent.x < (x + 144) and obj_Indicator_Parent.y > (y-16) and obj_Indicator_Parent.y < (y + 144) {
		selected = true;
	} else {
		selected = false;	
	}
}

image_index = selected

depth = -200