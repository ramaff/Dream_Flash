function scr_Hit_Reactions(_damage_amount, _defense_amount) {
	// Location: Soul Parent Hit Events

	sNoHitTime = 0;

	scr_Soul_Been_Hit();
	scr_U03_Off();
	//scr_P02_Swap();

	scr_Heart_Reactions();

	if global.A[5] > 0 {
	    if sattackfactorbuffamount < 5 * global.A[5] {
			repeat(8) {
				scr_Particle_Burst(obj_State_Trail_Front, spr_Soul_Big_Bit, c_red, c_red, 1, 3 + random(3), 60 + random(60), 0, 100, 0.2 + random(0.3), 20 + random(20))	
			}
			
	        sattackfactorbuffamount = 5 * global.A[5];
	        sattackfactorbuffduration = 300;
			smovementfactorbuffamount = 1.5
	        smovementfactorbuffduration = 300;
	    }
	}
	if global.B[11] > 0 and global.B11Count > 0 {
	    if sregenfactorbuffamount < 20 * global.B[11] {
			repeat(8) {
				scr_Particle_Burst(obj_State_Trail_Front, spr_Soul_Big_Bit, c_fuchsia, c_fuchsia, 1, 3 + random(3), 60 + random(60), 0, 100, 0.2 + random(0.3), 20 + random(20))	
			}
			
	        sregenfactorbuffamount = 20 * global.B[11];
	        sregenfactorbuffduration = 180;
		
			global.B11Count--;
	    }
	} /*
	if global.B[12] > 0 {
	    if sdefensebuffamount < (2 + 2 * global.B[12]) {
	        sdefensebuffamount = 2 + 2 * global.B[12];
	        sdefensebuffduration = 180;
	    }
	} */
	if global.D[5] > 0 {
	    //if smovementfactorbuffamount < 10 * global.D[5] {
			var color = make_color_rgb(0, 255, 84);	
			repeat(8) {
				scr_Particle_Burst(obj_State_Trail_Front, spr_Soul_Big_Bit, color, color, 1, 3 + random(3), 60 + random(60), 0, 100, 0.2 + random(0.3), 20 + random(20))	
			}
			
	        soulinvincibility += 20 + (5 * global.D[5]);
			smovementfactorbuffamount = 5 + (3.5 * global.D[5]);
	        smovementfactorbuffduration = soulinvincibility;
	        sfireratefactorbuffamount = 1.5 + (3 * global.D[5]);
	        sfireratefactorbuffduration = 300;
	   // }
	}

	var hchance = irandom(smaxhealth);
	var dmg = _damage_amount - _defense_amount;

	scr_C09();
	scr_S01();
	scr_S06();
	scr_P03();
	scr_A11();
	scr_XA04();
	scr_XC04();
	
	scr_F06(dmg);

	/*if dmg > 2 {
		var hchance = irandom(smaxhealth);
		if (dmg > hchance) {
			scr_S05();	
		}
	} */

	var hchance = irandom(smaxhealth / 2);
	if (dmg > hchance) and (dmg < shealth) {
		scr_S02();
	}

	var hchance = irandom(smaxhealth / 2);
	if (dmg > hchance) and (dmg < shealth) {
		scr_S03();
	}



}
