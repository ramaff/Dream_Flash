function scr_C05() {
	// Location Soul Hit by Bullet Event

	if global.C[5] > 0 {

	    var val = irandom(2 * global.C[5]) + irandom(80);
    
	    if val >= 80
	    if (instance_exists(obj_Boss_Parent) and (distance_to_object(obj_Boss_Parent) < 115)) {
	        scr_Essence_Attack_Field();
	    }

	}



}
