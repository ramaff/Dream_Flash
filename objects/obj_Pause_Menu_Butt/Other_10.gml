/// @description Insert description here
// You can write your code in this editor
if selected = false {
	with (obj_Pause_Menu_Butt) {
		event_user(1)	
	}
	if image_alpha > 0 {
		scr_Sound_Effect(snd_Button_Hover)
	}
	selected = true;
}