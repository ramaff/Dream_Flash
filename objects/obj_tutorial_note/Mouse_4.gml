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
current_page = clamp(current_page, 1, final_page + 1);

variable_struct_set(global.tutorial_progress, tutorial_keyword, current_page)

if current_page > final_page {
    instance_destroy();
    scr_Save();
}

//global.gameTutorial = current_page;