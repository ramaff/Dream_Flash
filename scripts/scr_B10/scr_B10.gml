function scr_B10() {
	// Location Soul Step Before

	if global.B[10] > 0 {
	    with(obj_Boss_Parent) {
	        if distance_to_object(other) <= (110 + 10 * global.B[10]) {
	            target = other;
	            bosshealth -= global.B[10] / 4;
				if obj_Soul_Parent.shealth < obj_Soul_Parent.smaxhealth {
		            var hamount = global.B[10] / 60 + (1/60);
					scr_Heal_Soul(hamount);
				}
	            with instance_create(x,y,obj_Life_Suck) {
	                target = other.target;
					direction = random(360)
					speed = 4;
	            }
	        }
	    }

	}



}
