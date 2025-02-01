function scr_bullet_instinct_drain(_instinct) {
	if distance_to_object(other) <= 80 {
	    if speed > 0 {
			if scr_Chance(30) {
				scr_Particle_Burst(obj_Friction_Part, spr_Soul_Bit, c_white, c_white, 4, 6 + random(4), 
									random(360), 360, 0, 0.6 + random(0.2), 15 + random(10))
				scr_Particle_Burst(obj_Soul_Target_Trail_Part, spr_Soul_Big_Bit, make_color_rgb(255, 0, 0), make_color_rgb(155, 0, 0), 1, 12 + random(4), 
									random(360), 0, 0, 0.2 + random(0.2), 90, undefined, undefined, undefined, undefined, other)
			}
			return _instinct + 1;
	    }
	}
	return _instinct
}

function scr_U07() {
	// Location Soul Item Step Before Event
	// Visual Code in Soul Draw Event

	if global.U[7] > 0 {
	    var _instinct = 0;
	    with(obj_Soul_Hurt) {
	        _instinct = scr_bullet_instinct_drain(_instinct)
	    }
		with(obj_soul_hurt_v2) {
	        _instinct = scr_bullet_instinct_drain(_instinct)
	    }
	    if _instinct >= 1 {
	        sdelay -= global.U[07] * 0.2 * _instinct;
			senergy += 0.1 * global.U[07] * _instinct;
	    }
	}



}
