// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Orbit(){

	
	if instance_exists(otarget) {

	    shot_stats.Shot_Center_X = otarget.x;
	    shot_stats.Shot_Center_Y = otarget.y;
    
	    shot_stats.Shot_Orbital_Angle += 1 + shot_stats.Shot_Speed;
    
	    if (shot_stats.Shot_Orbital_Angle >= 360) {
	        shot_stats.Shot_Orbital_Angle -= 360;
	    }

	    var _xx = lengthdir_x(shot_stats.Shot_Orbital_Range, shot_stats.Shot_Orbital_Angle) + shot_stats.Shot_Center_X;
	    var _yy = lengthdir_y(shot_stats.Shot_Orbital_Range, shot_stats.Shot_Orbital_Angle) + shot_stats.Shot_Center_Y;
		
		direction = point_direction(x, y, _xx, _yy)
		var _dist = point_distance(x, y, _xx, _yy)

		speed = min(_dist / 5, 4 + shot_stats.Shot_Speed * 4)
    
	    image_angle = shot_stats.Shot_Orbital_Angle + 90;
		
		if shot_stats.Shot_Orbital_Type = 3 {
			var _range = shot_stats.Shot_Orbital_Range;
			
			shot_stats.Shot_Orbital_Range += 100 / max(1, shot_stats.Shot_Orbital_Range)
			
			//shot_stats.Shot_Orbital_Range = sqrt((_range * _range) + (shot_stats.Shot_Speed * 5))
		}
	} else {
		direction = shot_stats.Shot_Orbital_Angle + 90;
		speed = shot_stats.Shot_Speed
	}
 
	
}