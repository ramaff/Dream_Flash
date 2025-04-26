function scr_Soul_Spawn(_cw_stats = current_weapon_stats) {
	
	repeat(_cw_stats.Shot_Count) {
		sadd = global.soulshotamountaddchance + irandom(99);

		if sadd >= 100 {
		    Shot_Count += 1;
		}
	}

	_cw_stats.Shot_Count += global.soulshotamountadd + global.soulshotamountaddtemp;

	scr_D10(current_weapon_stats);
	
	scr_XB05_Shot_Mod(current_weapon_stats);

	if _cw_stats.Shot_Count > 1 {
	    if _cw_stats.Shot_Spread < 10 and _cw_stats.Shot_Spread >= 0 {
	        _cw_stats.Shot_Spread = 10;
	    }
	}
	
	if _cw_stats.Shot_Count > 1 {
	    if _cw_stats.Shot_Spread < 1 {
	        _cw_stats.Shot_Spread = 10;
	    }
	}

	dir = -(_cw_stats.Shot_Spread * (_cw_stats.Shot_Count - 1) / 2) + (-(_cw_stats.Shot_Accuracy / 2) + random(_cw_stats.Shot_Accuracy));
	
	repeat(Shot_Count) {

	    with instance_create(x,y,asset_get_index(_cw_stats.Minion_Type)) {
			followtarget = noone;
			
	        smovementspeed = _cw_stats.Minion_Speed;
	        shealth = _cw_stats.Minion_Health;
	        smaxhealth = shealth;
	        spower = (_cw_stats.Minion_Power + other.spoweradd) * scr_Soul_Power_Factor_Calc(other);
	        //direction = point_direction(x,y,mouse_x,mouse_y);
	        Shot_Power = _cw_stats.Shot_Power;
	        Minion_Lifespan = _cw_stats.Minion_Lifespan;
	        alarm[1] = Minion_Lifespan;
	    }

	}



}
