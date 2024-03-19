function scr_Next_Phase_Check() {
	
	if currentphase = finalphase {
		boss_phase_threshold = 0;	
	}

	if bosshealth <= boss_phase_threshold {
	    currentphase += 1;
	    scr_H14();
	    if currentphase = 2 {
	        //bossmaxhealth = bossmaxhealth2;
	        //bosshealth += bossmaxhealth2;
			boss_phase_threshold -= bossmaxhealth2
	        bossdefense = bossdefense2;
	    }
	    if currentphase = 3 {
	        //bossmaxhealth = bossmaxhealth3;
	        //bosshealth += bossmaxhealth3;
			boss_phase_threshold -= bossmaxhealth3
	        bossdefense = bossdefense3;
	    }
	}
	if finalphase >= 5 {
		finalphase = 5;	
	}

	if currentphase >= finalphase
	if bosshealth <= 0 {
	    instance_destroy();
	}



}
