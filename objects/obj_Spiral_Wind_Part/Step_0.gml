/// @description Insert description here
// You can write your code in this editor

direction += ang_speed
ang_speed += ang_accel
ang_accel += ang_jerk
ang_jerk += ang_snap

scr_After_Image(10, true, false)