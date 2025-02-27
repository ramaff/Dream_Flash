function scr_Weapon_Rebound_Mouse(_bspeed = other.speed, _bsize = other.image_xscale, _bsprite = other.sprite_index, _biangle = other.image_angle) {
	var _xrelation = other.x - x;
	var _yrelation = other.y - y;

	if _bspeed > 50 {
		exit;	
	}
	
	var pow = max(1, shot_stats.Shot_Rebound_Power)

	with(obj_Soul_Parent) {
		scr_Default_Weapon_Stats();
		
		current_weapon_stats = {
			Shot_Spread: 0,
			Shot_Accuracy: 5,
			Shot_Count: 1,
			Shot_Mouse: 0,
			Shot_Sprite: sprite_get_name(_bsprite),
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Speed: 4,
			Shot_Direction: _biangle + 180, //point_direction(obj_Soul_Parent.x,obj_Soul_Parent.y,mouse_x,mouse_y),
			Shot_Power: pow,
			Shot_Knock_Back: 10,
			Shot_Life_Span: 100,
			Shot_Pierce: 1,
			Shot_Size: _bsize,
			Shot_Forward: 0,
			Shot_Form_Show: 0,
			Shot_Angle: _biangle + 180, //point_direction(obj_Soul_Parent.x,obj_Soul_Parent.y,mouse_x,mouse_y)
			Shot_Init_Grow: 0
		};
		
		current_weapon_stats.Shot_XX = _xrelation;
		current_weapon_stats.Shot_YY = _yrelation;
	
		if _bspeed > 0 {
	        current_weapon_stats.Shot_Speed = 3 + _bspeed; 
	    }
	
		current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation();

	}
	with(other) {
	    instance_destroy();
	}



}
