/// @description Insert description here
// You can write your code in this editor

if distance_to_object(obj_Soul_Parent) < 100 {
    move_towards_point(obj_Soul_Parent.x,obj_Soul_Parent.y,6);
    friction = 0
} else {
    friction = 3;
}

image_xscale = size;
image_yscale = size;