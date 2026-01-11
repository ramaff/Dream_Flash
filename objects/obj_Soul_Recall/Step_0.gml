/// @description Insert description here
// You can write your code in this editor
var _dir = point_direction(x, y, obj_Soul_Parent.x, obj_Soul_Parent.y)

speed = min(point_distance(x, y, obj_Soul_Parent.x, obj_Soul_Parent.y), speed + 1);
direction = scr_Angle_Converge(direction, _dir + max(90 - (speed * 1.25), 0), (speed * speed) / 10)
scr_After_Image();
