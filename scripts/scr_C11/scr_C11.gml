function scr_C11() {
	// Location Soul Step Before

	if global.C[11] > 0 {
		if global.C11Overflow > 0 {
			var potency = global.C11Overflow / 2.5;
			
		    with instance_nearest(x,y,obj_Boss_Parent) {
		        //if distance_to_object(other) <= (250 + 10 * global.C[11]) {
		        target = id;
		        bosshealth -= potency;
					
				var repeats = 0;
				if potency < 1 {
					if scr_Chance(1 / max(potency, 0.01)) {
						repeats = 1;	
					}
				} else {
					repeats = floor(potency);
				}
					
				repeat(repeats) {
			        with instance_create(other.x,other.y,obj_Essence_Flow) {
			            target = other.target;
						direction = random(360)//point_direction(x,y,target.x, target.y)
						speed = 4;
			        }
				}
		    }
		    //}
		}
		global.C11Overflow = 0;
	}

}
