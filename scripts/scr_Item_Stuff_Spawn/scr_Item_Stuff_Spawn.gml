function scr_Item_Stuff_Spawn() {
	
	if global.A[11] > 0 {
		instance_create_depth(x - 200,y - 200,0,obj_Strong_Personality)
	}

	if global.V[4] > 0 {
	    repeat(global.V[4]) {
			with instance_create_depth(x,y,0,obj_Gaping_Void) {
				size = 0.01;	
				scr_Basic_Teleport();
			}
	    }
	}
	
	if global.XB[3] > 0 {
	    repeat(global.XB[3]) {
			instance_create_depth(x - 200,y - 200,0,obj_Panic_Inducer)
	    }
	}
	
	if global.XC[3] > 0 {
	    repeat(global.XC[3]) {
			instance_create_depth(x - 200,y - 200,0,obj_Hopeless_Feeling)
	    }
	}
	
	if global.P[11] > 0 {
		instance_create_depth(x,y, depth, obj_Photographic_Memory)
	}


}
