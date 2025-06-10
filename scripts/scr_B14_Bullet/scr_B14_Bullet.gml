function scr_B14_Bullet(damageamount, defenseamount, _borigin) {
	if global.B[14] > 0 {
	    var bpow = damageamount - defenseamount;
		if instance_exists(_borigin) {
		    with(_borigin) {
		        var _dmg = 5 + (global.B[14] * bpow * 4);
		        bosshealth -= _dmg;
        
				scr_setup_dmg_indicator(x,y, _dmg, c_white)
		    }
		}
	}

}
