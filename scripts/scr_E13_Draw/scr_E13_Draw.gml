function scr_E13_Draw() {

	// Visual Code in Soul Draw Event

	if global.E[13] > 0 {
	    telebulletnear = 0;
	    with(obj_Soul_Hurt) {
	        if distance_to_object(other) <= 75 {
	            if speed > 0 {
	                other.telebulletnear = 1;
	            }
	        }
	    }
	    if telebulletnear = 1 {
	        draw_sprite(spr_Perception_Danger_Aura,0,x,y);
	    }
	}



}
