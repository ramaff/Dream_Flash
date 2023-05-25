// Extra Shot Stats

function scr_V08() {

	if global.V[8] >= 1 {
		shotwander = global.V[8];
		shotlifespan = ceil(shotlifespan * 0.75);
		alarm[0] = shotlifespan;
		shotspeed = shotspeed * 0.75;
		speed = speed * 0.75;
	}

}
