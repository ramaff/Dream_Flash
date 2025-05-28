function scr_Boss_Status_Step() {
	/*
	var xv = room_width / 2;
	var yv = room_height / 2;

	
	var xval = x - xv;
	var yval = y - yv;
	
	var inside = 0;

	if abs(xval) < ((global.roomSizeX / 2) - abs(yval)) and abs(yval) < ((global.roomSizeY / 2) - abs(xval)) {
	    inside = 1;
	}
	*/

	for(i = 0; i <= 49; i++) {
	    bosspoisontime[i] -= 15;
	    bossbleedtime[i] -= 15;
	    bossfiretime[i] -= 15;
	    bossweakentime[i] -= 15;
	    bossstaggertime[i] -= 15;
    
	    if bosspoison[i] != 0 and bosspoisontime[i] <= 0 {
	        bosspoisontime[i] = bosspoisonmaxtime[i];
	        bosspoisonticks[i]--;
        
	        bosshealth -= bosspoison[i];
			
			scr_State_Gain(bosspoison[i]);
        
	        scr_Status_Damage_Display(bosspoison[i], c_green);
        
	        if bosspoisonticks[i] <= 0 {
	            bosspoison[i] = 0;
	            bosspoisontime[i] = 0;
	            bosspoisonmaxtime[i] = 0;
	        }
	    }
	    if bossbleed[i] != 0 and bossbleedtime[i] <= 0 {
	        bossbleedtime[i] = bossbleedmaxtime[i];
	        bossbleedticks[i]--;
        
	        bosshealth -= bossbleed[i];
			
			scr_State_Gain(bossbleed[i]);
        
	        scr_Status_Damage_Display(bossbleed[i], c_red);
        
	        if bossbleedticks[i] <= 0 {
	            bossbleed[i] = 0;
	            bossbleedtime[i] = 0;
	            bossbleedmaxtime[i] = 0;
	        }
	    }
	    if bossfire[i] != 0 and bossfiretime[i] <= 0 {
	        bossfiretime[i] = bossfiremaxtime[i];
	        bossfireticks[i]--;
        
	        bosshealth -= bossfire[i];
			
			scr_State_Gain(bossfire[i]);
        
	        scr_Status_Damage_Display(bossfire[i], c_orange);
        
	        if bossfireticks[i] <= 0 {
	            bossfire[i] = 0;
	            bossfiretime[i] = 0;
	            bossfiremaxtime[i] = 0;
	        }
	    }
    
    
	    if bossweaken[i] != 0 and bossweakentime[i] <= 0 {
	        bossweaken[i] = 0;
	    }
    
	    if bossstagger[i] != 0 and bossstaggertime[i] <= 0 {
	        bossstagger[i] = 0;
	    }
	}

	bossfreezetime -= 15;
	bossstuntime -= 15;
	bossknockbacktime -= 15;
	
	if bossfreeze != 0 {
		gpu_set_blendmode(bm_normal);
		image_blend = c_blue;	
	} else {
		image_blend = c_white;	
	}

	if bossfreeze != 0 and bossfreezetime <= 0 {
		
	    bossfreeze = 0;
		bossfreezetype = 0;
	    bossattackspeed = bossattackspeedmax;
	    bossmovespeed = bossmovespeedmax;
	}
	

	if bossknockbacktime <= 0 {
	    bossknockback = 0;
	}

	if bossstun != 0 and bossstuntime <= 0 {
	    bossstun = 0;
	    bossattackspeed = bossattackspeedmax;
	    bossmovespeed = bossmovespeedmax;
	}

	if currentphase >= finalphase
	if bosshealth <= 0 {
	    instance_destroy();
	}




}
