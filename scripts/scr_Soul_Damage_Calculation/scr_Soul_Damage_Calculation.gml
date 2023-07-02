function scr_Soul_Damage_Calculation() {
	//Location Soul Hit Events

	//if (damageamount > defenseamount) {
	    soulinvincibility = 36;
		
		//scr_E01();
    
	    scr_H16();
		
		var truedam = 0;
		
		if damageamount > global.stagedamage * 1.5 {
			damageamount = global.stagedamage * 1.5;	
		}
    
	    if (damageamount - defenseamount > damageamount / 5) {
	        truedam = (damageamount - defenseamount) / (1 + global.souldamagereduction);
	    } else {
			truedam -= damageamount / 5;
		}
		
		truedam = scr_OC04_Check(truedam);
		
		truedam += truedam * global.downwardSpiralBoost;
		
		if global.B[3] > 0 {
			scr_B03(truedam)
		}
		if global.T[1] > 0 {
			scr_T01_Decay(truedam)
		}
		scr_XC05(truedam);
		scr_B14_Heart(truedam);
		
		truedam = scr_OB05(truedam);
		
		shealth -= truedam;
		
		with instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_Damage_Indicator) {
			element = 1;
			damageIndication = truedam /* / global.healthungen */
			additiveIndication = 0
			if damageIndication < 1 {
				damageIndication = 1;	
			}
			textSize = 2;
			direction = 90;
			speed = 1.5 + random(0.35)
			friction = 0.01 + (other.speed / 600)
			alarm[0] = 60 + irandom(6);
		}
    
	    scr_B04();
		scr_XA03_Charge(truedam);
		
		scr_Screen_Shake(ceil(damageamount * 1.5), 7);
    
	    scr_Hit_Reactions();
	//}



}
