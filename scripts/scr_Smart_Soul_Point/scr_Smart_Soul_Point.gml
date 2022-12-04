function scr_Smart_Soul_Point() {
	var xx = x;
	var yy = y;
	var tarx = xx;
	var tary = yy;
	var tarangle = 0;
	var tarspeed = 0;
	
	var dx = 1;
	var dy = 1;
	
	var l = sqrt(dx*dx + dy*dy);
    dx /= l;
    dy /= l;
	
	if instance_exists(obj_Butt_Of_Jokes) {
		tarx = obj_Butt_Of_Jokes.x
		tary = obj_Butt_Of_Jokes.y;
		tarangle = obj_Butt_Of_Jokes.direction;
		tarspeed = obj_Butt_Of_Jokes.speed;
	} else {
		
		var dx = keyboard_check(ord(global.gameMoveRight)) - keyboard_check(ord(global.gameMoveLeft));
	var dy = keyboard_check(ord(global.gameMoveDown)) - keyboard_check(ord(global.gameMoveUp));
	
	var l = sqrt(dx*dx + dy*dy);
    dx /= l;
    dy /= l;
	
		tarx = obj_Soul_Parent.perX;
		tary = obj_Soul_Parent.perY;
		tarangle = point_direction(x,y,x+dx,y+dx);
		tarspeed = obj_Soul_Parent.smovementspeed;
		
	}
	
	var time = ((point_distance(x,y,tarx,tary) / max(tarspeed,1))) / 60;
	
	if dx = 0 and dy = 0 {
		return point_direction(x,y,tarx, tary);
	}
	
	var future_x = tarx + (lengthdir_x(tarspeed, tarangle) * (room_speed * time));
	var future_y = tary + (lengthdir_y(tarspeed, tarangle) * (room_speed * time));
	
	
	return point_direction(x,y,future_x,future_y);

}
