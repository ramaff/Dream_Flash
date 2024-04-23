// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Mix_Two_Color_Arrays(_color_1, _color_2){

	if is_array(_color_1) {
		_color_1 = scr_Color_From_Array(_color_1)
		_color_2 = scr_Color_From_Array(_color_2)
	}
	return merge_colour(_color_1, _color_2, random(1));

}