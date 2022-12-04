/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if room = State_Room {
	global.mechprogress++;	
	
	var sDir = random(360);

	repeat(8) {
		with instance_create(x,y,obj_State_Essence) {
			direction = sDir;
			speed = 15;
		}
		sDir += 45;
	}
}

scr_State_Form_Unlock();