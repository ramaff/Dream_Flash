/// @description Insert description here
// You can write your code in this editor
var _dir = point_direction(x, y, obj_Soul_Parent.x, obj_Soul_Parent.y)

speed = min(point_distance(x, y, obj_Soul_Parent.x, obj_Soul_Parent.y), speed + 0.25);
direction = scr_Angle_Converge(direction, _dir, speed)
scr_After_Image();
