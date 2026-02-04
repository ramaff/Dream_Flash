function scr_B10() {
	// Location Soul Step Before

	var _target = id;
	var _dam = global.B[10] / 3
	var _dam_display = 0
	if global.roomtime mod 10 = 0 {
		_dam_display = _dam * 10;
	}
	var _dist = sqrt(20000 * global.B[10])
	var _hamount = _dam / 20;
	with(obj_Boss_Parent) {
	    if distance_to_object(_target) <= _dist {
	        bosshealth -= _dam;
			if _dam_display > 0 {
				scr_setup_dmg_indicator(x,y, _dam_display, c_white);
			}
			if obj_Soul_Parent.shealth < obj_Soul_Parent.smaxhealth {
		        var hamount = _hamount;
				scr_Heal_Soul(hamount);
			}
	        with instance_create(x,y,obj_Life_Suck) {
	            target = _target;
				direction = random(360)
				speed = 4;
	        }
	    }
	}



}
