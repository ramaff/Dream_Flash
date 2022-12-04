function scr_Familiar_Spawn() {

	scr_Gem_Spawn();
	
	scr_N04();
	
	minions[0] = noone;
	followminions[0] = noone;
	exemptminions[0] = noone;
	var cMin = 0;
	var cMinAlt = 0;
	var cMinEx = 0;
	
	if global.M[1] > 0 {
	    repeat(global.M[1]) {
	        followminions[cMinAlt] = obj_Wandering_Soul;
			cMinAlt++;
	    }
	}

	if global.M[2] > 0 {
	    repeat(global.M[2]) {
	        followminions[cMinAlt] = obj_Friendly_Figment;
			cMinAlt++;
	    }
	}

	if global.M[3] > 0 {
	    repeat(global.M[3]) {
	        minions[cMin] = obj_Fighter_Soul;
			cMin++;
	    }
	}

	if global.M[4] > 0 {
	    repeat(global.M[4]) {
	        exemptminions[cMinEx] = obj_Butt_Of_Jokes;
			cMinEx++;
	    }
	}

	if global.M[5] > 0 {
	    repeat(global.M[5]) {
	        minions[cMin] = obj_Blaze_Soul;
			cMin++;
	    }
	}

	if global.M[6] > 0 {
	    repeat(global.M[6]) {
	        minions[cMin] = obj_Flash_Cannon;
			cMin++;
	    }
	}

	if global.M[7] > 0 {
	    repeat(global.M[7]) {
	        followminions[cMinAlt] = obj_Fuse_Soul;
			cMinAlt++;
	    }
	}

	if global.M[8] > 0 {
	    repeat(global.M[8]) {
	        followminions[cMinAlt] = obj_Healthy_Thoughts;
			cMinAlt++;
	    }
	}

	if global.M[9] > 0 {
	    repeat(global.M[9]) {
	        followminions[cMinAlt] = obj_Spike_Soul;
			cMinAlt++;
	    }
	}

	if global.M[10] > 0 {
	    repeat(global.M[10]) {
	        followminions[cMinAlt] = obj_Corporeal_Chum;
			cMinAlt++;
	    }
	}

	if global.M[11] > 0 {
	    repeat(global.M[11]) {
	        minions[cMin] = obj_Hungry_Soul;
			cMin++;
	    }
	}

	if global.M[12] > 0 {
	    repeat(global.M[12]) {
	        minions[cMin] = obj_Troubling_Thingo;
			cMin++;
	    }
	}

	if global.M[13] > 0 {
	    repeat(global.M[13]) {
	        followminions[cMinAlt] = obj_Copy_Cat_Soul;
			cMinAlt++;
	    }
	}

	if global.M[14] > 0 {
	    repeat(global.M[14]) {
	        minions[cMin] = obj_Explosive_Manifesto;
			cMin++;
	    }
	}

	if global.M[15] > 0 {
	    repeat(global.M[15]) {
	        minions[cMin] = obj_Poisonous_Soul;
			cMin++;
	    }
	}

	if global.M[16] > 0 {
	    count = 0;
	    repeat(global.M[16]) {
			/*
	        with instance_create(x,y,obj_Cognition) {
	            Angle = other.count * (360 / global.M[16]);
	        }
	        count++;
			*/
			minions[cMin] = obj_Cognition;
			cMin++;
	    }
	}
	if global.M[17] > 0 {
	    repeat(global.M[17]) {
	        minions[cMin] = obj_Bleeding_Soul;
			cMin++;
	    }
	}

	if global.M[18] > 0 {
	    repeat(global.M[18]) {
	        followminions[cMinAlt] = obj_Bullet_Eater;
			cMinAlt++;
	    }
	}

	if global.M[19] > 0 {
	    repeat(global.M[19]) {
	        followminions[cMinAlt] = obj_Magican_Soul;
			cMinAlt++;
	    }
	}
	
	if global.M[20] > 0 {
	    repeat(global.M[20]) {
	        followminions[cMinAlt] = obj_Positive_Thoughts;
			cMinAlt++;
	    }
	}
	
	if global.M[21] > 0 {
	    repeat(global.M[21]) {
	        followminions[cMinAlt] = obj_Electro_Soul;
			cMinAlt++;
	    }
	}
	
	if global.M[22] > 0 {
	    repeat(global.M[22]) {
	        followminions[cMinAlt] = obj_Glum_Chum;
			cMinAlt++;
	    }
	}
	
	if global.M[23] > 0 {
		/*
	    count = 0;
	    repeat(global.M[23]) {
	        with minions[cMin] = obj_Barrier_Soul) {
	            Angle = other.count * (360 / global.M[23]);
	        }
	        count++;
	    }
		*/
		repeat(global.M[23]) {
	        minions[cMin] = obj_Barrier_Soul;
			cMin++;
	    }
	}

	if global.M[24] > 0 {
		/*
	    count = 0;
	    repeat(global.M[24]) {
	        with minions[cMin] = obj_Mello_Jello) {
	            Angle = other.count * (360 / global.M[24]);
	        }
	        count++;
	    }
		*/
		repeat(global.M[24]) {
	        minions[cMin] = obj_Mello_Jello;
			cMin++;
	    }
	}
	
	if global.M[25] > 0 {
	    repeat(global.M[25]) {
	        followminions[cMinAlt] = obj_Rattlesoul;
			cMinAlt++;
	    }
	}


	var ct = id;
	var ang = 0;
	var dis = 20;

	for(var i = 0; i < cMinAlt; i++) {
		with instance_create(x + lengthdir_x(dis, ang),y + lengthdir_y(dis, ang), followminions[i]) {
			followtarget = ct;
			ct = id;
		}
		ang += 45;
		dis += 5 + (300 / dis);
	}
	
	for(var i = 0; i < cMin; i++) {
		with instance_create(x + lengthdir_x(dis, ang),y + lengthdir_y(dis, ang), minions[i]) {
			followtarget = ct;
			ct = id;
		}
		ang += 45;
		dis += 5 + (300 / dis);
	}
	
	for(var i = 0; i < cMinEx; i++) {
		with instance_create(x + lengthdir_x(dis, ang),y + lengthdir_y(dis, ang), exemptminions[i]) {
		}
		ang += 45;
		dis += 5 + (300 / dis);
	}

}
