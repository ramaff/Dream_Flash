/// @description  Boss Step Event

if !instance_exists(minionbossparent) {
	instance_destroy()
}

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(60, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

if full {
	
	direction = scr_Angle_Converge(direction, point_direction(x, y, minionbossparent.x, minionbossparent.y),4)
	speed = lerp(speed, bossmovespeed * 0.85, 0.1);
	sprite_index = spr_Vampire_Bat_Full;
	
} else {

	if lunge {
	
		speed = lerp(speed, bossmovespeed, 0.025);
	
		if speed <= (bossmovespeed * 1.25) {
			lunge = false;
		}
		sprite_index = spr_Vampire_Bat_Bite;
		
	} else {
		direction = scr_Angle_Converge(direction, scr_Soul_Point(), 4)

		if scr_Soul_Distance() < 250 {
			speed = lerp(speed, 0, 0.05);
			if speed < bossmovespeed * 0.25 {
				lunge = true;
				direction = scr_Soul_Point()
				speed = bossmovespeed * 7.5;
			}
		} else {
			speed = lerp(speed, (bossmovespeed * 1.5), 0.025);	
		}
		
		sprite_index = spr_Vampire_Bat_Bullet;
	}
}
