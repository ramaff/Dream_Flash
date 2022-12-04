scr_Invincibility_Frames();

scr_Minion_Step();

//scr_Light_Follow_Soul_AI();

if followtarget = obj_Soul_Parent.id {
	if instance_exists(followtarget) {
		var dis = point_distance(x, y, followtarget.x, followtarget.y - 80)
		if dis > 1 {
			direction = point_direction(x, y, followtarget.x, followtarget.y - 80);
			speed = (dis - 1) / 10;
		} else {
			speed = lerp(speed, 0, 0.3);
		}
	} else {
		speed = lerp(speed, 0, 0.3);
		instance_destroy();
	}
} else {
	scr_Minion_Follow_Leader();	
}

/// In Boss Beat Script

/*
if global.bosscount < 1 and pay = 0 {
	repeat(2) {
		with instance_create(x,y,obj_Soul_Flash) {
		    direction = random(360);
		    speed = 1 + random(4);
		    friction = 0.1
		    alarm[0] = 45 + random(10);
		}
	}
	pay = 1;
}