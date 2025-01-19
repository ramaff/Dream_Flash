function scr_Soul_Icon_Cloud() {
	//draw_self();
	draw_set_colour(c_black);
	draw_set_halign(fa_center);

	//depth -= 1000;
	
	var _xx = 200;
	var _yy = 280;

	if statVal = "Health" {
	    draw_text(x + _xx,y + _yy -180, string_hash_to_newline("Base HP: " + string(basehp)));
	    draw_text(x + _xx,y + _yy -148, string_hash_to_newline("Regen Rate: " + string(regenhp) + "/sec"));
	    if defense >= 0 {
	        draw_text(x + _xx,y + _yy -116, string_hash_to_newline("Defense: " + "+" + string(defense)));
	    } else {
	        draw_text(x + _xx,y + _yy -116, string_hash_to_newline("Defense: " + string(defense)));
	    }
	}
	if statVal = "Power" {
	    draw_text(x + _xx,y + _yy -180, string_hash_to_newline("Power Multiplier: " + "+" + string((basepow - 1) * 100) + "%"));
	    draw_text(x + _xx,y + _yy -148, string_hash_to_newline("Power Bonus: " + "+" + string(powadd)));
	}
	if statVal = "Essence" {
		draw_text(x + _xx,y + _yy -180, string_hash_to_newline("Essence Cap: " + string(baseep)));
	    draw_text(x + _xx,y + _yy -148, string_hash_to_newline("Regen Rate: " + string(regenep) + "/sec"));
	}
	if statVal = "Dexterity" {
		//var fireratedown = global.souldelayconservation;
		draw_text(x + _xx,y + _yy -180, string_hash_to_newline("Firerate: +" + string((basefirerate - 1) * 100) + "%"));
	    draw_text(x + _xx,y + _yy -148, string_hash_to_newline("Soul Speed: " + string(soulspeed) + ""));
	}
	if statVal = "Perception" {
		//var fireratedown = global.souldelayconservation;
		draw_text(x + _xx,y + _yy -180, string_hash_to_newline("Teleport Cost: " + string(teleCost)));
	    draw_text(x + _xx,y + _yy -148, string_hash_to_newline("Teleport Cooldown: " + string(teleSpeed / 60) + "s"));
		draw_text(x + _xx,y + _yy -116, string_hash_to_newline("Weapon Ess. Cost: " + "-" + string((1 - essCost) * 100) + "%"));
	}

	//depth += 1000;



}
