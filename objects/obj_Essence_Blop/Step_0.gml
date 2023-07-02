/// @description Insert description here
// You can write your code in this editor

if distance_to_object(obj_Soul_Parent) < 120 {
    move_towards_point(obj_Soul_Parent.x,obj_Soul_Parent.y,6);
    friction = 0
} else {
    friction = 2;
}

image_xscale = size;
image_yscale = size;