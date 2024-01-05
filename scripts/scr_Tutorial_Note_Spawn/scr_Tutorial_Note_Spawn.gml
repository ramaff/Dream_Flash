// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Tutorial_Note_Spawn(_tutorial_keyword = "base_tutorial"){
	
	var _tutorial_info = variable_struct_get(global.tutorial_info, _tutorial_keyword)
	var _tutorial_text = _tutorial_info.tut_texts

	if variable_struct_get(global.tutorial_progress, _tutorial_keyword) > array_length(_tutorial_text) {
		exit;	
	}
	
	with instance_create(room_width / 2,room_height / 2, obj_tutorial_note) {
		tutorial_keyword = _tutorial_keyword
		tutorial_info = _tutorial_info

		tutorial_sprite = asset_get_index(tutorial_info.tut_sprite)
		tutorial_text = _tutorial_text

		current_page = 1;
		final_page = array_length(tutorial_text);
	}
}