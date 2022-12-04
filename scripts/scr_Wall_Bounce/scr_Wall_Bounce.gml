function scr_Wall_Bounce() {
	if(place_meeting(x + hspeed, y, obj_The_Border))
	    direction = -direction + 180;

	//Vertical bounce
	if(place_meeting(x, y + vspeed, obj_The_Border))
	    direction = -direction;



}
