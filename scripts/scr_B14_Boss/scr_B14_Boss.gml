function scr_B14_Boss(damageamount, defenseamount) {
	if global.B[14] > 0 {
	    var bpow = damageamount - defenseamount;
		if instance_exists(other.bossid) {
		    with(other.bossid) {
		        var _dmg = 5 + (global.B[14] * bpow * 4);
		        bosshealth -= _dmg;
        
				scr_setup_dmg_indicator(x,y, _dmg, c_white)
		    }
		}
	}



}
