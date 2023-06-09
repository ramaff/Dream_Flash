function scr_Boss_Step(version = 1) {
	scr_Next_Phase_Check();
	scr_Boss_Attack_Step(version);
	//scr_Boss_Status_Step();
	scr_Boss_Morph_In(version);
	//scr_Room_Depth(0);
	
	if version = 2 {
		if state = states.jumping || state = states.leaping {
			if activeAttack = 0 and bossHeight < 10 {
				state = states.normal;	
			}
		}
	}
	
	if state = states.normal || state = states.jumping {
		var stay_in = true;
		if object_index = obj_Masked_Hope_Spirit || object_index = obj_Masked_Bliss_Spirit || object_index = obj_Masked_Vanity_Spirit {
			stay_in = false;
		}
		if !scr_Outside_Check_Bool(256) and stay_in = true {
			var dirr = point_direction(x, y, room_width / 2, room_height / 2);
			//var amount = max(abs(x) - ((room_width / 2) + global.roomSizeX), 0)
			//amount += max(abs(y) - ((room_height / 2) + global.roomSizeY), 0)
			var xx = x + lengthdir_x(100, dirr)
			var yy = y + lengthdir_y(100, dirr)
			x = lerp(x, xx, 0.02);
			y = lerp(y, yy, 0.02);
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
