function scr_Gem_Spawn() {
	gcount = 0;
	totalg = 0;
	for(i = 0; i < 99; i++) {
	    totalg += global.G[i];
	}

	if global.G[1] > 0 {
	    repeat(global.G[1]) {
	        with instance_create(x,y,obj_Red_Dream_Gem) {
	            Angle = other.gcount * (360 / other.totalg);
	        }
	        gcount++;
	    }
	}
	if global.G[2] > 0 {
	    repeat(global.G[2]) {
	        with instance_create(x,y,obj_Yellow_Dream_Gem) {
	            Angle = other.gcount * (360 / other.totalg);
	        }
	        gcount++;
	    }
	}
	if global.G[3] > 0 {
	    repeat(global.G[3]) {
	        with instance_create(x,y,obj_Cyan_Dream_Gem) {
	            Angle = other.gcount * (360 / other.totalg);
	        }
	        gcount++;
	    }
	}
	if global.G[4] > 0 {
	    repeat(global.G[4]) {
	        with instance_create(x,y,obj_Lime_Dream_Gem) {
	            Angle = other.gcount * (360 / other.totalg);
	        }
	        gcount++;
	    }
	}
	if global.G[5] > 0 {
	    repeat(global.G[5]) {
	        with instance_create(x,y,obj_Pink_Dream_Gem) {
	            Angle = other.gcount * (360 / other.totalg);
	        }
	        gcount++;
	    }
	}
	if global.G[6] > 0 {
	    repeat(global.G[6]) {
	        with instance_create(x,y,obj_Blue_Dream_Gem) {
	            Angle = other.gcount * (360 / other.totalg);
	        }
	        gcount++;
	    }
	}



}
