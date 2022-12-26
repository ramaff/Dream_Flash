/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event

var startx = x;
var starty = y;

x = other.x + lengthdir_x(-50, point_direction(x,y,other.x,other.y));
y = other.y + lengthdir_y(-50, point_direction(x,y,other.x,other.y));

event_inherited();

x = startx;
y = starty;

x += lengthdir_x(-10, point_direction(x,y,other.x,other.y))
y += lengthdir_y(-10, point_direction(x,y,other.x,other.y))