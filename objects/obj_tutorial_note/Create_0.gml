/// @description Insert description here
// You can write your code in this editor
note_alpha = 0;
text_alpha = 0;

tutorial_keyword = "base_tutorial"

tutorial_info = {
	"tut_sprite": "spr_Tutorial_Stuff",
	"tut_texts": ["this is placeholder tutorial text", "page 2 placeholder"]
}

tutorial_sprite = asset_get_index(tutorial_info.tut_sprite)
tutorial_text = tutorial_info.tut_texts

current_page = 1;
final_page = array_length(tutorial_text);


