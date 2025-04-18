// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_sort_by_scale(a, b) {
	return a.scale < b.scale;
}

function scr_Weapon_Slot_Info_Update(_weapon_slot_info){
	var _win_y = camcon.window_scale * camcon.view_zoom * camera_get_view_height(view);
	
	var _i = 0;
	var _scale = 1;
	var _xx_width = 40;
	var _xx_center = 75;
	var _yy_center = _win_y - 88;
	var _yy_width = 40;
	
	var _xx = 0;
	var _yy = 0;
	
	var _angle = 270 + Soul_Weapons_Control.angular_rotation;
	var _angle_displacement = 360 / global.weaponslots

	for(_i = 0; _i < global.weaponslots; _i++) {

	    var _weap = Soul_Weapons_Control.weapon[_i].weapon_id;
		_scale = 0.5 - (0.25 * abs(angle_difference(270, _angle) / 180))
		_xx = _xx_center + lengthdir_x(_xx_width, _angle)
		_yy = _yy_center + (lengthdir_y(_yy_width, _angle) * 2 * _scale)

		/*if _i < array_length(_weapon_slot_info) {
			if is_struct(_weapon_slot_info[_i]) {
				delete _weapon_slot_info[_i]	
			}
		} */

		_weapon_slot_info[_i] = {
			"xx": _xx,
			"yy": _yy,
			"scale": _scale,
			"weap": _weap,
		}
		
		_angle += _angle_displacement

	}
	Soul_Weapons_Control.angular_rotation = floor(Soul_Weapons_Control.angular_rotation * 0.85)
	
	array_sort(_weapon_slot_info, scr_sort_by_scale)
}