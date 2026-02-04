function scr_Hyper_Sense_Bullet(_col) {
	var _dir = direction - 90 + random(180)
	var _spd = speed + random(3)
	x -= lengthdir_x(_spd, _dir)
	y -= lengthdir_y(_spd, _dir)
	scr_Particle_Burst(obj_Friction_Part_Front, spr_Cross_Part, _col, _col, 1, 1 + random(1), random(360), 0, 0, image_xscale, 10 + random(5))	
}

function scr_E13() {
	// Location Soul Item Step Before Event
	// Visual Code in Soul Draw Event

	if global.roomtime mod 10 = 0 {
		var _col = make_colour_rgb(170, 60, 255)
	    var telebulletnear = 0;
	    with(obj_Soul_Hurt) {
	        if distance_to_object(other) <= 90 {
	            telebulletnear++;
				scr_Hyper_Sense_Bullet(_col)
	        }
	    }
		with(obj_soul_hurt_v2) {
	        if distance_to_object(other) <= 90 {
	            telebulletnear++;
				scr_Hyper_Sense_Bullet(_col)
	        }
	    }
	    repeat(telebulletnear) {
			var _uppies = 3 * global.E[13];
	        tdelay -= global.E[13];
			scr_Refresh_Soul(_uppies);
	    }
	}



}
