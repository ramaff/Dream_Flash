function scr_Weapon_Slot_Info_Update(_weapon_slot_info){
	var _win_y = 540 - 120;
	
	var _i = 0;
	var _scale = 1;
	var _xx_width = 55;
	var _xx_center = 105;
	var _yy_center = _win_y;
	var _yy_width = 40;
	
	var _xx = 0;
	var _yy = 0;
	
	var _angle = 270 + Soul_Weapons_Control.angular_rotation;
	var _angle_displacement = 360 / global.weaponslots

	for(_i = 0; _i < global.weaponslots; _i++) {
	    var _weap = Soul_Weapons_Control.weapon[_i].weapon_id;
		_scale = 0.7 - (0.35 * abs(angle_difference(270, _angle) / 180))
		_xx = _xx_center + lengthdir_x(_xx_width, _angle)
		_yy = _yy_center + (lengthdir_y(_yy_width, _angle) * 2 * _scale)

		_weapon_slot_info[_i].xx = _xx
		_weapon_slot_info[_i].yy = _yy
		_weapon_slot_info[_i].scale = _scale
		_weapon_slot_info[_i].weap = _weap

		_angle += _angle_displacement
	}
	
	Soul_Weapons_Control.angular_rotation = floor(Soul_Weapons_Control.angular_rotation * 0.9)
	
}