function scr_Refresh_Soul(_h_amount, _overflow = false) {

	if !_overflow {
		var _remain = obj_Soul_Parent.smaxenergy - obj_Soul_Parent.senergy;
		_remain = max(_remain, 0);
		_h_amount = min(_remain, _h_amount);
	}
	obj_Soul_Parent.senergy += _h_amount /* / global.healthungen */;
	//global.healthungen += (global.healthungen * _h_amount) / 20;
	
	var ichance = 1;
	var _indication = _h_amount
	if _h_amount < 1 and _h_amount >= 0 {
		ichance = floor(random(0.99) + _h_amount);
		_indication = 1;
	}
	
	if ichance = 1 {
		var xx = -20 + random(20);
		var yy = -20 + random(20);
		scr_setup_dmg_indicator(obj_Soul_Parent.x + xx,obj_Soul_Parent.y + yy, _indication, c_aqua)
	}
}
