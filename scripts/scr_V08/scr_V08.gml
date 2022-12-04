// Extra Shot Stats

function scr_V08() {

	if global.V[8] >= 1 {
		shotwander = 1;
		shotlifespan = shotlifespan * 0.75;
		alarm[0] = shotlifespan;
		shotspeed = shotspeed * 0.75;
		speed = speed * 0.75;
	}

}
