function scr_Soul_Spawn() {
	sadd = global.soulshotamountaddchance + irandom(99);

	if sadd >= 100 {
	    Shot_Count += 1;
	}
	Shot_Count += global.soulshotamountadd + global.soulshotamountaddtemp;

	if Shot_Count > 1 {
	    if Shot_Spread < 1 {
	        Shot_Spread = 10;
	    }
	}

	dir = -(Shot_Spread * (Shot_Count - 1) / 2) + (-(Shot_Accuracy / 2) + random(Shot_Accuracy));

	repeat(Shot_Count) {

	    with instance_create(x,y,Minion_Type) {
			followtarget = noone;
			//followtarget = obj_Soul_Parent//ct;
			//ct = id;
			
	        smovementspeed = other.Minion_Speed;
	        shealth = other.Minion_Health;
	        smaxhealth = shealth;
	        spower = other.Minion_Power
	        //direction = point_direction(x,y,mouse_x,mouse_y);
	        Shot_Power = other.Shot_Power;
	        Minion_Lifespan = other.Minion_Lifespan;
	        alarm[1] = Minion_Lifespan;
	        //direction += other.dir / other.saccuracy;
	        //speed = smovementspeed;
	    }

	}



}
