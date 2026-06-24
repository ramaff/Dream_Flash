/// @description Insert description here
// You can write your code in this editor
current_page = clamp(current_page, 1, final_page + 1);

variable_struct_set(global.tutorial_progress, tutorial_keyword, current_page)

if current_page > final_page {
    alarm[0] = 1;
    scr_Save();
}