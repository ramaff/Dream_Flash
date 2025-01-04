function scr_B05_v2(damageamount) {
	// Location Soul Hit by Bullet Event

	if global.B[5] > 0 {
		repeat(8) {
			scr_Particle_Burst(obj_Friction_Part, spr_Soul_Big_Bit, make_color_rgb(255,50,255), make_color_rgb(255,150,255), 1, 16 + random(8), other.direction - 270 + random(180), 0, 0, 0.5, 25 + random(5))
		}
	    scr_Rubber_Soul_Rebound_Shot(other.bullet_stats.bullet_speed, other.bullet_stats.bullet_power);
	    damageamount = damageamount / (1 + (0.15 * global.B[5]));
		speed = 10 + random(5);
		alarm[10] = 10;
		direction = other.direction;
	}
}


function scr_B05(damageamount) {
	// Location Soul Hit by Bullet Event

	if global.B[5] > 0 {
		repeat(8) {
			scr_Particle_Burst(obj_Friction_Part, spr_Soul_Big_Bit, make_color_rgb(255,50,255), make_color_rgb(255,150,255), 1, 16 + random(8), other.direction - 270 + random(180), 0, 0, 0.5, 25 + random(5))
		}
	    scr_Rubber_Soul_Rebound_Shot(other.bulletspeed, other.bulletpower);
	    damageamount = damageamount / (1 + (0.15 * global.B[5]));
		speed = 10 + random(5);
		alarm[10] = 10;
		direction = other.direction;
	}
}
