function scr_Hit_Reactions() {
	// Location: Soul Parent Hit Events

	sNoHitTime = 0;

	scr_Soul_Been_Hit();
	scr_U03_Off();
	//scr_P02_Swap();

	scr_Heart_Reactions();

	if global.A[5] > 0 {
	    if sattackfactorbuffamount < 5 * global.A[5] {
	        sattackfactorbuffamount = 5 * global.A[5];
	        sattackfactorbuffduration = 240;
			smovementfactorbuffamount = 1.5
	        smovementfactorbuffduration = 240;
	    }
	}
	if global.B[11] > 0 and global.B11Count > 0 {
	    if sregenfactorbuffamount < 20 * global.B[11] {
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
	    if smovementfactorbuffamount < 10 * global.D[5] {
	        smovementfactorbuffamount = 3.5 + (1.75 * global.D[5]);
	        smovementfactorbuffduration = 300;
	        sfireratefactorbuffamount = 3.3 * global.D[5];
	        sfireratefactorbuffduration = 300;
	        if soulinvincibility < 20 {
	            soulinvincibility = 20;
	        }
	    }
	}

	var hchance = irandom(smaxhealth);
	var dmg = damageamount - defenseamount;

	scr_C09();
	scr_S01();
	scr_T03();
	scr_P03();
	scr_A11();
	scr_XA04();
	scr_XC04();
	
	scr_F06(dmg);

	if dmg > 2 {
		var hchance = irandom(smaxhealth);
		if (dmg > hchance) {
			scr_T02();	
		}
	}

	var hchance = irandom(smaxhealth / 2);
	if (dmg > hchance) and (dmg < shealth) {
		scr_S02();
	}

	var hchance = irandom(smaxhealth / 2);
	if (dmg > hchance) and (dmg < shealth) {
		scr_S03();
	}



}
