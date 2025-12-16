/// @description Insert description here
// You can write your code in this editor

if text_alpha >= 1 {
	if mouse_x <= x {
		current_page--;
	} else {
		current_page++;
	}
	text_alpha = 0;
}
event_user(0);

//global.gameTutorial = current_page;