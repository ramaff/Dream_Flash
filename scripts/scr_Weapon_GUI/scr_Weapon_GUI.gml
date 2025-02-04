function scr_Weapon_GUI() {
	var winx = camcon.window_scale * camcon.view_zoom * camera_get_view_width(view);
	var winy = camcon.window_scale * camcon.view_zoom * camera_get_view_height(view);
	
	/*draw_sprite_ext(spr_Weapon_Template,0,45,winy - 48,0.5,0.5,0,c_white,1);
	draw_sprite__xxt(spr_Weapon_Template,0,24,winy - 88,0.25,0.25,0,c_white,1);
	draw_sprite__xxt(spr_Weapon_Template,0,65,winy - 88,0.25,0.25,0,c_white,1);
	
	var wspr = spr_Soul_Shot_Art;

	if global.weaponslots > 3 {
		draw_sprite_ext(spr_Weapon_Template,0,45,winy - 112,0.125,0.125,0,c_white,1);
	}
	
	*/
	
	var _i = 0;
	var _scale = 1;
	var _xx_width = 40;
	var _xx_center = 70;
	var _yy_center = winy - 88;
	var _yy_width = 35;
	//var _yy_down = 40;
	//var _yy_up = 20;
	
	var _xx = 0;
	var _yy = 0;
	
	var _angle = 270;
	var _angle_displacement = 360 / global.weaponslots

	for(_i = 0; _i < global.weaponslots; _i++) {

	    var _weap = Soul_Weapons_Control.weapon[_i].weapon_id;
		_scale = 0.5 - (0.25 * abs(angle_difference(270, _angle) / 180))
		_xx = _xx_center + lengthdir_x(_xx_width, _angle)
		_yy = _yy_center + lengthdir_y(_yy_width, _angle)
            
		draw_sprite_ext(spr_Weapon_Template,0,_xx,_yy,_scale,_scale,0,c_white,1);

		if _weap != 0 {
			var _wspr = variable_struct_get(global.weapon_stats, _weap).Recollection_Sprite
		
		    draw_sprite_ext(asset_get_index(_wspr),0,_xx,_yy,_scale,_scale,0,c_white,1);
		}
		
		_angle += _angle_displacement

		/*if global.weaponslots > 3 {
			if i = 0 {
		        var _xx = 45
		        var _yy = winy - 48
		        _scale = 1;
		    }
		    if i = 2 {
		        var _xx = 24
		        var _yy = winy - 88
		        _scale = 0.5;
		    }
		    if i = 3 {
		        var _xx = 66
		        var _yy = winy - 88
		        _scale = 0.5;
		    }
			if i = 2 {
				var _xx = 45
				var _yy = winy - 112
				_scale = 0.25;
			}
		}
		_scale = _scale / 2; */

    


	}



}
