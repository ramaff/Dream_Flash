function scr_Soul_Spawn() {
	
	repeat(Shot_Count) {
		sadd = global.soulshotamountaddchance + irandom(99);

		if sadd >= 100 {
		    Shot_Count += 1;
		}
	}

	Shot_Count += global.soulshotamountadd + global.soulshotamountaddtemp;

	scr_D10();
	
	scr_XB05_Shot_Mod();

	if Shot_Count > 1 {
	    if Shot_Spread < 10 and Shot_Spread >= 0 {
	        Shot_Spread = 10;
	    }
	}
	
	if Shot_Count > 1 {
	    if Shot_Spread < 1 {
	        Shot_Spread = 10;
	    }
	}

	dir = -(Shot_Spread * (Shot_Count - 1) / 2) + (-(Shot_Accuracy / 2) + random(Shot_Accuracy));
	
	var _stats = Shot_Stats

	repeat(Shot_Count) {

	    with instance_create(x,y,asset_get_index(_stats.Minion_Type)) {
			followtarget = noone;
			
	        smovementspeed = _stats.Minion_Speed;
	        shealth = _stats.Minion_Health;
	        smaxhealth = shealth;
	        spower = (_stats.Minion_Power + other.spoweradd) * ((10 + other.spowerfactor + other.sattackfactorbuffamount) / 10) * other.spower / 10 * scr_Class_Stat_Damage_Multiplier();
	        //direction = point_direction(x,y,mouse_x,mouse_y);
	        Shot_Power = _stats.Shot_Power;
	        Minion_Lifespan = _stats.Minion_Lifespan;
	        alarm[1] = Minion_Lifespan;
	    }

	}



}
