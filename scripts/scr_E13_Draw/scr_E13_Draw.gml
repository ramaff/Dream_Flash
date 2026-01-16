function scr_E13_Draw() {

	// Visual Code in Soul Draw Event

	if global.E[13] > 0 {
	    var telebulletnear = 0;
	    with(obj_Soul_Hurt) {
	        if distance_to_object(other) <= 75 {
	            telebulletnear = 1;
	        }
	    }
		with(obj_soul_hurt_v2) {
	        if distance_to_object(other) <= 75 {
	            telebulletnear = 1;
	        }
	    }
	    if telebulletnear = 1 {
	        draw_sprite(spr_Perception_Danger_Aura,0,x,y);
	    }
	}



}
