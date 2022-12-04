function scr_C06() {
	// Location Soul Hit by Bullet Event

	if global.C[6] > 0 {
    
	    var val = irandom(2 * global.C[6]) + irandom(120);
    
	    if val >= 120
	    if (instance_exists(obj_Bullet_Parent) and (distance_to_object(obj_Bullet_Parent) < 100)) {
	        scr_Essence_Defense_Field();
	    }

	}



}
