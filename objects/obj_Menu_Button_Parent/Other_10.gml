/// @description Insert description here
// You can write your code in this editor

// select

if selected = false {
	with (obj_Menu_Button_Parent) {
		event_user(1)	
	}
	if image_alpha > 0 {
		scr_Sound_Effect(snd_Button_Hover)
	}
	sprite_index = on_sprite
	selected = true;
}