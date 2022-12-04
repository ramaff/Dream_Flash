function scr_P04_Draw() {

	// Visual Code in Soul Draw Event

	if global.P[4] > 0 {
	    var regenbulletnear = 0;
	    with(obj_Soul_Hurt) {
	        if distance_to_object(other) <= 75 {
	            if speed > 0 {
	                regenbulletnear = 1;
	            }
	        }
	    }
	    if regenbulletnear = 1 {
	        draw_sprite(spr_Perception_Danger_Aura,0,x,y);
	    }
	}



}
