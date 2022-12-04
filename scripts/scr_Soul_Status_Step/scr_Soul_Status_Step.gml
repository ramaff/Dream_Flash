function scr_Soul_Status_Step() {
	/*for(i = 0; i <= 99; i++) {
	    soulpoisontime[i]--;
	    soulbleedtime[i]--;
	    soulfiretime[i]--;
	    soulweakentime[i]--;
	    soulstaggertime[i]--;
    
	    if soulpoison[i] != 0 and soulpoisontime[i] <= 0 {
	        soulpoisontime[i] = soulpoisonmaxtime[i];
	        soulpoisonticks[i]--;
        
	        soulhealth -= soulpoison[i];
        
	        scr_Status_Damage_Display(soulpoison[i],5);
        
	        if soulpoisonticks[i] <= 0 {
	            soulpoison[i] = 0;
	            soulpoisontime[i] = 0;
	            soulpoisonmaxtime[i] = 0;
	        }
	    }
	    if soulbleed[i] != 0 and soulbleedtime[i] <= 0 {
	        soulbleedtime[i] = soulbleedmaxtime[i];
	        soulbleedticks[i]--;
        
	        soulhealth -= soulbleed[i];
        
	        scr_Status_Damage_Display(soulbleed[i],1);
        
	        if soulbleedticks[i] <= 0 {
	            soulbleed[i] = 0;
	            soulbleedtime[i] = 0;
	            soulbleedmaxtime[i] = 0;
	        }
	    }
	    if soulfire[i] != 0 and soulfiretime[i] <= 0 {
	        soulfiretime[i] = soulfiremaxtime[i];
	        soulfireticks[i]--;
        
	        soulhealth -= soulfire[i];
        
	        scr_Status_Damage_Display(soulfire[i],2);
        
	        if soulfireticks[i] <= 0 {
	            soulfire[i] = 0;
	            soulfiretime[i] = 0;
	            soulfiremaxtime[i] = 0;
	        }
	    }
    
    
	    if soulweaken[i] != 0 and soulweakentime[i] <= 0 {
	        soulweaken[i] = 0;
	    }
    
	    if soulstagger[i] != 0 and soulstaggertime[i] <= 0 {
	        soulstagger[i] = 0;
	    }
	}
	*/

	soulfreezetime--;
	soulstuntime--;
	soulsleeptime--;

	if soulstun != 0 and soulstuntime <= 0 {
	    soulstun = 0;
	}
	if soulsleep != 0 and soulsleeptime <= 0 {
	    soulsleep = 0;
	}

	if TPCooldown > 0 {
		if global.E[11] > 0 {
			/*
			part_type_sprite(ptype,spr_Soul_Small_Bit,0,0,0);
			part_type_color_mix(ptype, make_color_rgb(255,100,255),make_color_rgb(255,200,255));
			part_type_alpha1(ptype, 1)
			var partcreate = irandom(4);
	
			if partcreate = 1 {
				scr_Soul_Part_Summon();
			}
			*/
		}
		TPCooldown--;
	}

	if TPCooldown <= 0 {
		TPCooldown = 0;
		perX = x;
		perY = y;
	}


}
