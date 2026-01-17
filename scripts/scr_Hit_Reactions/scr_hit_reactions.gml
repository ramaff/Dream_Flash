function scr_Hit_Reactions(_damage_amount, _defense_amount) {
	// Location: Soul Parent Hit Events

	sNoHitTime = 0;

	scr_Soul_Been_Hit();
	scr_U03_Off();
	//scr_P02_Swap();

	scr_Heart_Reactions();

	if global.A[5] > 0 {
		scr_A05();
	}
	if global.B[11] > 0 and global.B11Count > 0 {
		repeat(8) {
			scr_Particle_Burst(obj_State_Trail_Front, spr_Soul_Big_Bit, c_fuchsia, c_fuchsia, 1, 3 + random(3), 60 + random(60), 0, 100, 0.2 + random(0.3), 20 + random(20))	
		}
			
		var _status_effect = {
			"duration": 180,
			"magnitude": 20 * global.B[11],
			"tick_script": scr_Soul_Regen_Mult_Tick,
			"tick_frequency": 5
		}
		scr_Soul_Status_Effect_Add(soul_step_status_effects, "regen_mult", _status_effect)	
		
		global.B11Count--;
	}
	if global.D[5] > 0 {
		scr_D05();
	}

	var hchance = irandom(smaxhealth);
	var dmg = _damage_amount - _defense_amount;

	scr_C09();
	scr_S01();
	scr_S06();
	scr_P03();
	//scr_A11();
	if global.XA[3] > 0 {
		scr_Update_Temper(180);
	}
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
