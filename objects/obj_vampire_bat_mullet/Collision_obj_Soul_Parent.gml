/// @description Insert description here
// You can write your code in this editor

if !full {
	full_source_id = other.id;
	if other.object_index = obj_Basic_Soul {
		scr_Update_Soul_Health(other.shealth - 1)
	} else {
		other.shealth -= 1;
	}

	scr_setup_dmg_indicator(other.x, other.y, 1, c_red, 0)

	full = true;
}