if distance_to_object(obj_Soul_Parent) < 90 {
    move_towards_point(obj_Soul_Parent.x,obj_Soul_Parent.y,6);
    friction = 0
} else {
    friction = 6;
}

size += 0.01;
if size > 0.5 {
	size = 0.5;	
}
image_xscale = size;
image_yscale = size;

if obj_Soul_Parent.x < x {
	image_xscale = -image_xscale;	
}