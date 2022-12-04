function scr_Item_Field_Push() {
	suckSpeed = argument[0];

	    with (obj_Soul) {
	        dis = distance_to_object(other);
	        if dis <= 100 {
	            var sSpeed = ((100 - dis) / 100) * (other.suckSpeed);
	            var suckAngle = 180 + point_direction(x,y,other.x,other.y);
            
	            x += lengthdir_x(sSpeed, suckAngle);
	            y += lengthdir_y(sSpeed, suckAngle);
	        }
        
	    }




}
