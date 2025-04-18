function scr_Soul_Damage_Calculation(_damage_amount, _defense_amount) {
	//Location Soul Hit Events

	//if (_damage_amount > _defense_amount) {
	    soulinvincibility = 36;
		
		//scr_E01();
    
	    scr_H16(_damage_amount, _defense_amount);
		
		var truedam = 0;
		
		if _damage_amount > global.stagedamage * 1.5 {
			_damage_amount = global.stagedamage * 1.5;	
		}
    
	    if (_damage_amount - _defense_amount > _damage_amount / 5) {
	        truedam = (_damage_amount - _defense_amount) / (1 + global.souldamagereduction);
	    } else {
			truedam -= _damage_amount / 5;
		}
		
		truedam = scr_OC04_Check(truedam);
		
		truedam += truedam * global.downwardSpiralBoost;
		
		if global.B[3] > 0 {
			scr_B03(truedam)
		}
		if global.S[4] > 0 {
			scr_S04_Decay(truedam)
		}
		scr_XC05(truedam);
		scr_B14_Heart(truedam);
		
		truedam = scr_OB05(truedam);
		
		shealth -= truedam;
		
		scr_setup_dmg_indicator(obj_Soul_Parent.x,obj_Soul_Parent.y, truedam, c_red)
    
	    scr_B04();
		scr_XA03_Charge(truedam);
		
		scr_Screen_Shake(ceil(_damage_amount * 1.5), 7);
    
	    scr_Hit_Reactions(_damage_amount, _defense_amount);
	//}



}
