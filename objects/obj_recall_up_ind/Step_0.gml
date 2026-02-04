/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
speed = speed * 0.98

direction = scr_Angle_Converge(direction, 90 + scr_Wave(-30, 30, 0.25, 0), 5)
