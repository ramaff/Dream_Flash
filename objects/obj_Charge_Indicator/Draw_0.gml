if instance_exists(obj_Soul_Parent) {
	
	if obj_Soul_Parent.Charge_Hold = 1 {
	    image_alpha += 0.1;
	} else {
	    image_alpha = -0.5;
	}
	
	var cNum = ((3 + global.P[5]) / 3)

	var cMax = 120 * cNum;

	/*if obj_Soul_Parent.weaponcharge = 10 || obj_Soul_Parent.weaponcharge = 56 {
	var cMax = 90 * cNum;
	}
	if obj_Soul_Parent.weaponcharge = 111 {
	var cMax = 60 * cNum;
	}
	if obj_Soul_Parent.weaponcharge = 412 {
	var cMax = 150 * cNum;
	} */
	if variable_struct_exists(global.weapon_stats, obj_Soul_Parent.weaponcharge) {
		current_stats = variable_struct_get(global.weapon_stats, obj_Soul_Parent.weaponcharge);
	
		//show_debug_message("current_stats: " + string(current_stats))
	
		if variable_struct_exists(current_stats, "Charge_Time") {
			cMax = current_stats.Charge_Time * cNum;
		}
		
		if global.OC[3] > 0 {
			cMax = cMax * 2.5;
		}
	}

	var cpercent = 100 * (obj_Soul_Parent.Charge_Time / cMax);

	draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
	draw_sprite_part_ext(sprite_index,1,0,31 * (1 - (cpercent / 100)),32,31,x-16,y - 15 + 31 * (1 - (cpercent / 100)),image_xscale,image_yscale,c_white,image_alpha);

	if global.L[1] > 0 {
		
		var cMaxL = 50 * global.L[1];
		var slot = Soul_Weapons_Control.weapon[0,1];
		
		var cPercentL = 1 * (global.L01essence[slot] / cMaxL);
		
		var cAlpha2 = 1;
		
		if cPercentL <= 0 {
			cAlpha2 = 0;	
		}
		
		draw_sprite_ext(sprite_index,0,x - 30,y,image_xscale,image_yscale,image_angle,c_white,cAlpha2);
		draw_sprite_part_ext(sprite_index,1,0,31 * (1 - (cPercentL)),32,31,x-46,y - 15 + 31 * (1 - (cPercentL)),image_xscale,image_yscale,c_white,cAlpha2);
		
	}
	
	if global.V[7] > 0 and global.V7mindblow > 0 {
		
		var cMaxL = 100;
		var slot = Soul_Weapons_Control.weapon[0,1];
		
		var cPercentL = 1 * (global.V7mindblow / cMaxL);
		
		var cAlpha2 = 1;
		
		if cPercentL <= 0 {
			cAlpha2 = 0;	
		}
		
		draw_sprite_ext(spr_Mindblow_Indication,0,x + 30,y,image_xscale,image_yscale,image_angle,c_white,cAlpha2);
		draw_sprite_part_ext(spr_Mindblow_Indication,1,0,31 * (1 - (cPercentL)),32,31,x+14,y - 15 + 31 * (1 - (cPercentL)),image_xscale,image_yscale,c_white,cAlpha2);
		
	}
	
	if global.XA[3] > 0 and global.temperCharge > 0 {
		
		var cMaxL = 100;
		var slot = Soul_Weapons_Control.weapon[0,1];
		
		var cPercentL = 1 * (global.temperCharge / cMaxL);
		
		var cAlpha2 = 1;
		
		if cPercentL <= 0 {
			cAlpha2 = 0;	
		}
		
		draw_sprite_ext(spr_Temper_Indication,0,x,y-15,image_xscale,image_yscale,image_angle,c_white,cAlpha2);
		draw_sprite_part_ext(spr_Temper_Indication,1,0,31 * (1 - (cPercentL)),32,31,x-15,y - 30 + 31 * (1 - (cPercentL)),image_xscale,image_yscale,c_white,cAlpha2);
		
	}

}