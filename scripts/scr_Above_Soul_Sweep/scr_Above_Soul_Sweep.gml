// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Above_Soul_Sweep(altitude = 250, min_x = -250, max_x = 250, sweep_time = 10, sweep_offset = 0) {
	
	var sweepPos = scr_Wave(min_x, max_x, sweep_time, sweep_offset)

	var tarX = obj_Soul_Parent.perX + sweepPos;
	var tarY = obj_Soul_Parent.perY - altitude - boss_height;

	speed += bossmovespeed / 30;
	if speed > bossmovespeed {
		speed = bossmovespeed;
	}
	direction = point_direction(x,y,tarX,tarY);

	var dist = point_distance(x,y,tarX,tarY);
	if dist < speed {
		speed = dist;
	}

}