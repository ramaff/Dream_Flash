function scr_B05_damage_reduction(damageamount) {
	repeat(8) {
		scr_Particle_Burst(obj_Friction_Part, spr_Soul_Big_Bit, make_color_rgb(255,50,255), make_color_rgb(255,150,255), 1, 16 + random(8), other.direction - 270 + random(180), 0, 0, 0.5, 25 + random(5))
	}
	damageamount = damageamount / (1 + (0.25 * global.B[5]));
		
	var _b_dir = other.direction - 90 + random(180)
	if other.speed = 0 {
		_b_dir = random(360)	
	}
		
	with instance_create(x, y, obj_Force_Push) {
		target = other.id
		alarm[0] = 30

		force = 5 + (5 * global.B[5]) + irandom(5);
		force_friction = force / alarm[0];
		force_direction = _b_dir;
	}
	
	return damageamount
}

function scr_B05_v2(damageamount, _bullet_hit = true) {

	if global.B[5] > 0 {
		if _bullet_hit {
			scr_Rubber_Soul_Rebound_Shot(other.bullet_stats.bullet_speed, other.bullet_stats.bullet_power);
		}
	    damageamount = scr_B05_damage_reduction(damageamount)
	}
	
	return damageamount
}


function scr_B05(damageamount, _bullet_hit = true) {

	if global.B[5] > 0 {
		if _bullet_hit {
			scr_Rubber_Soul_Rebound_Shot(other.bulletspeed, other.bulletpower);
		}
	    damageamount = scr_B05_damage_reduction(damageamount)
	}
	
	return damageamount
}
