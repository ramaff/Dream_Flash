function scr_A12(_cw) {
	// Location Shot Creation

	if global.A[12] > 0 {
		
		var _dmg = (global.A[12]) * _cw.Shot_Power / 3;
		var _size = 80 + (5 * sqrt(10 * _dmg))
		
		scr_Disk_Effect(5 + (_size / 10), _size / 100, c_red, 0.5);
	    with(obj_Boss_Parent) {
	        if distance_to_point(other.x, other.y) <= _size {
	            bosshealth -= _dmg;
            
				scr_setup_dmg_indicator(x,y, _dmg, c_white)
	        }
	    }
	}



}
