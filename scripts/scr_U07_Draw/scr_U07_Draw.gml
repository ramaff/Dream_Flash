function scr_U07_Draw() {

	// Visual Code in Soul Draw Event

	if global.U[07] > 0 {
	    var instinct = 0;
	    with(obj_Soul_Hurt) {
	        if distance_to_object(other) <= 60 {
	            if speed > 0 {
	                instinct = 1;
	            }
	        }
	    }
	    if instinct = 1 {
	        draw_sprite(spr_Instinct_Aura,0,x,y);
	    }
	}



}
