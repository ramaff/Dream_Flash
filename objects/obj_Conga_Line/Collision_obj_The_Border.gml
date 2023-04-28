/// @description Insert description here
// You can write your code in this editor
if currentphase = 2 {
	var jumpstop = false
	if state = states.jumping and bossHeight < 40 {
		jumpstop = true	
	}

	if state = states.normal || jumpstop {
		var i;
		i = point_direction(other.x, other.y, x, y);
		x += lengthdir_x(1 + speed, i);
		y += lengthdir_y(1 + speed, i);

		if(place_meeting(x + hspeed, y - bossHeight, obj_The_Border))
		    direction = -direction + 180;

		//Vertical bounce
		if(place_meeting(x, y + vspeed - bossHeight, obj_The_Border))
		    direction = -direction;

		dashDirection = direction;

		scr_Soul_Outside_Check();
	}

}