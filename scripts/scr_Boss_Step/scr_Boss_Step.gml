function scr_Boss_Step(version = 1) {
	scr_Next_Phase_Check();
	scr_Boss_Attack_Step(version);
	//scr_Boss_Status_Step();
	scr_Boss_Morph_In(version);
	//scr_Room_Depth(0);
	
	if state = states.normal || state = states.jumping {
		if !scr_Outside_Check_Bool(256) {
			x = lerp(x, room_width / 2, 0.01);
			y = lerp(y, room_height / 2, 0.01);
		}
	}

	if boost = 1 {
	    val = irandom(6)
	    if val = 6 {
	        with instance_create(x,y,obj_Boost_Spark) {
	            alarm[0] = 15 + random(60);
	            speed = 0.2 + random(1);
	            direction = random(360);
	        }
	    }
	}
	
	if bossknockback != 0 and bossknockbacktime > 0 /*and inside = 1 */{
	    var angl = bossknockbackdirection;
	    x += lengthdir_x(bossknockback, angl);
	    y += lengthdir_y(bossknockback, angl);
	}

}
