function scr_Wall_Phase_Sometimes() {
	if bossPhase = 0 {

	    var spd = speed + 1;
	    var i;
	    i = point_direction(other.x, other.y, x, y);
	    x += lengthdir_x(spd, i);
	    y += lengthdir_y(spd, i);
    
	    if(place_meeting(x + hspeed, y, obj_The_Border)) {
	        direction = -direction + 180;
		}
	    //Vertical bounce
	    if(place_meeting(x, y + vspeed, obj_The_Border)) {
	        direction = -direction;
		}


		bossDashDirection = direction;
	}



}
