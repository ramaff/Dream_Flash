function scr_Item_Stuff_Spawn() {
	/*
	var gcount = 0;
	var totalg = 0;
	var i;
	for(i = 0; i < 99; i++) {
	    totalg += global.G[i];
	} */


	if global.V[4] > 0 {
	    repeat(global.V[4]) {
			with instance_create(x,y,obj_Gaping_Void) {
				size = 0.01;	
				scr_Basic_Teleport();
			}
		
	    }
	}
	
	if global.XB[3] > 0 {
	    repeat(global.XB[3]) {
			with instance_create(x - 200,y - 200,obj_Panic_Inducer) {
				//scr_Basic_Teleport();
			}
	    }
	}
	
	if global.XC[3] > 0 {
	    repeat(global.XC[3]) {
			with instance_create(x - 200,y - 200,obj_Hopeless_Feeling) {
				//scr_Basic_Teleport();
			}
	    }
	}


}
