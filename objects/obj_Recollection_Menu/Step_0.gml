/// @description Insert description here
// You can write your code in this editor
if InputReleased(INPUT_VERB.PAUSE) || InputReleased(INPUT_VERB.CANCEL) || keyboard_check_released(ord("P")) || keyboard_check_released(vk_escape) {
	event_user(0)	
}

var _add_cat = 0;


if InputReleased(INPUT_VERB.SHOOT) and !mouse_check_button_released(mb_left) {
	_add_cat = -1;	
}
if InputReleased(INPUT_VERB.WARP) and !mouse_check_button_released(mb_right) {
	_add_cat = 1;	
}
	
if _add_cat != 0 {
	with (obj_Recollection_Category_Butt) {
		if selected = true {
			other.selected_cat = cat
		}
		selected = false;
	}
	selected_cat = selected_cat + _add_cat
	if selected_cat <= 0 {
		selected_cat = categoryNum;
	}
	if selected_cat > categoryNum {
		selected_cat = 1;
	}
	with (obj_Recollection_Category_Butt) {
		if other.selected_cat == cat {
			selected = true;
			event_perform(ev_mouse, ev_left_release)
		}
	}
}