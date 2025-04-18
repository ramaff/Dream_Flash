function scr_Weapon_Rebound(_bull_speed = other.bulletspeed) {
	var _bsize = other.image_xscale;
	var _bsprite = other.sprite_index;
	var _xrelation = other.x - x;
	var _yrelation = other.y - y;
	var _biangle = other.image_angle;
	var _bmoveangle = other.direction;

	if _bull_speed > 50 {
		exit;	
	}
	
	var pow = max(1, shot_stats.Shot_Rebound_Power)
	//var bspeed = 

	with(obj_Soul_Parent) {
		current_weapon_stats = scr_Setup_Default_Shot_Stats();
		
		current_weapon_stats.Shot_XX = _xrelation;
		current_weapon_stats.Shot_YY = _yrelation;
		
		current_weapon_stats.Shot_Spread = 0;
		current_weapon_stats.Shot_Accuracy = 5;
		current_weapon_stats.Shot_Count = 1;
		current_weapon_stats.Shot_Mouse = 0;
		current_weapon_stats.Shot_Sprite = sprite_get_name(_bsprite);
		current_weapon_stats.Shot_Type = "obj_Lesser_Soul_Shot";
		current_weapon_stats.Shot_Speed = 6 + _bull_speed;
		current_weapon_stats.Shot_Direction = _bmoveangle + 180;
		current_weapon_stats.Shot_Power = pow;
		current_weapon_stats.Shot_Knock_Back = 10;
		current_weapon_stats.Shot_Life_Span = 100;
		current_weapon_stats.Shot_Pierce = 1;
		current_weapon_stats.Shot_Size = _bsize;
		current_weapon_stats.Shot_Forward = 0;
		current_weapon_stats.Shot_Form_Show = 0;
		current_weapon_stats.Shot_Angle = _bmoveangle + 180;
		current_weapon_stats.Shot_Init_Grow = 0
	
		if _bull_speed > 0 {
	        current_weapon_stats.Shot_Speed = 3 + _bull_speed; 
	    }
	
		//scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation(current_weapon_stats);

	}
	with(other) {
	    instance_destroy();
	}



}
