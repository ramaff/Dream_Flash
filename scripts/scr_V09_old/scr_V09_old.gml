// Extra Shot Stats

function scr_V09_old() {

	if global.V[9] >= 1 {
		//shotlobbing = 1;
		//shotbounceY = 0;
	    //shotbouncespeed = 10;
	    //shotbouncedirection = 1;	
		
		shotpowermax = shotpowermax * (0.5);
		shotpower = shotpowermax;
		shotPowerLevel = shotPowerLevel * (0.5);
		
		shotsize = shotsize * 0.7;
		image_xscale = shotsize;
		image_yscale = shotsize;
		
		shotlifespan = shotlifespan * 0.5;
		alarm[0] = shotlifespan;
		shotspeed = shotspeed * 1.25;
		speed = speed * 1.25;
	}

}
