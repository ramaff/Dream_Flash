/// @description Insert description here
// You can write your code in this editor

barheight = 400;
global.scrollperc = buttony / barheight;

if active = false {
	if mouse_wheel_up() {
		buttony -= scrollamount;
	}
	if mouse_wheel_down() {
		buttony += scrollamount;
	}
}

if active = true {
	buttony = mouse_y - y;	
}

buttony = clamp(buttony,0,barheight);