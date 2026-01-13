function scr_B05_damage_reduction(damageamount) {
	repeat(8) {
		scr_Particle_Burst(obj_Friction_Part, spr_Soul_Big_Bit, make_color_rgb(255,50,255), make_color_rgb(255,150,255), 1, 16 + random(8), other.direction - 270 + random(180), 0, 0, 0.5, 25 + random(5))
	}
	damageamount = damageamount / (1 + (0.35 * global.B[5]));
		
	var _b_dir = point_direction(x, y, other.x, other.y) - 60 + random(120)
	if other.speed = 0 {
		_b_dir = random(360)	
	}
	
	var _force = 5 + (5 * global.B[5]) + irandom(5);
	
	scr_force_push(id, 45, _force, _force / 45, _b_dir)
	
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
