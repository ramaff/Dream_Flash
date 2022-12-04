image_xscale = 0.4;
image_yscale = 0.4;

if distance_to_object(obj_Soul_Parent) < 90 {
    move_towards_point(obj_Soul_Parent.x,obj_Soul_Parent.y,6);
    friction = 0
} else {
    friction = 6;
}

