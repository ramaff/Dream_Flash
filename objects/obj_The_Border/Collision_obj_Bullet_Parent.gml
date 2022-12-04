/*
if orientation != 0 {
    
    bdir = orientation;
    
    with instance_create(x,y,obj_Border_Impact) {
        image_angle = (round(other.bdir) * 90) + 90;
        if image_angle = 180 {
			y -= 0;
			x += 0;
		}
		if image_angle = 270 {
			y -= 0;
			x -= 0;
		}
        if other.type = 1 {
            image_angle += 180;
        }
        if other.type = 2 {
            image_angle += 90;
        }
    }
}

