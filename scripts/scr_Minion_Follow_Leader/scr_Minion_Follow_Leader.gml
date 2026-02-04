// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Minion_Follow_Leader(setdist = 50, setspeed = 5, adjust = true){
	//speed = 4;
	if adjust {
		scr_Minion_Follow_Adjust();
	}
	
	if instance_exists(followtarget) {
		var dis = point_distance(x, y, followtarget.x, followtarget.y)
		direction = point_direction(x, y, followtarget.x, followtarget.y);
		if dis > setdist {
			speed = (dis - setdist) / (50 / setspeed);
		} else {
			speed = lerp(speed, 0, 0.3);
		}
	} else {
		speed = lerp(speed, 0, 0.3);
		instance_destroy();
	}
}