function scr_Boss_Step(version = 1) {
	scr_Next_Phase_Check();
	scr_Boss_Attack_Step(version);
	//scr_Boss_Status_Step();
	if object_get_parent(object_index) != obj_Minion_Parent {
		scr_Boss_Morph_In(version);
	}
	//scr_Room_Depth(0);
	
	if version = 2 {
		if state = states.jumping || state = states.leaping {
			if active_attack = 0 and boss_height < 10 {
				state = states.normal;	
			}
		}
	}
	
	if state = states.normal || state = states.jumping {
		var stay_in = true;
		if object_index = obj_Masked_Hope_Spirit || object_index = obj_Masked_Bliss_Spirit || object_index = obj_Masked_Vanity_Spirit {
			stay_in = false;
		}
		if scr_Outside_Check_Bool(256) and stay_in = true {
			var dirr = point_direction(x, y, room_width / 2, room_height / 2);
			var xx = x + lengthdir_x(100, dirr)
			var yy = y + lengthdir_y(100, dirr)
			x = lerp(x, xx, 0.02);
			y = lerp(y, yy, 0.02);
		}
	}

	if boost = 1 {
	    //var _val = irandom(30)
	    if scr_Chance(20 + instance_number(obj_Main_Boss_Parent)) {
			
			var _p_size = 1 / (2 + instance_number(obj_Main_Boss_Parent))
			
			var color = make_color_rgb(255, 155, 0);		
			var color2 = make_color_rgb(255, 50, 0);
			scr_Particle_Burst(obj_Fire_Part, spr_Star_Part, color, color2, 1, 2 + random(4), random(360), 0, 120, _p_size + random(0.2), 40 + random(35), false)
			
	    }
	}
	
	if bossknockback != 0 and bossknockbacktime > 0 /*and inside = 1 */{
	    var angl = bossknockbackdirection;
	    x += lengthdir_x(bossknockback, angl);
	    y += lengthdir_y(bossknockback, angl);
	}

}
