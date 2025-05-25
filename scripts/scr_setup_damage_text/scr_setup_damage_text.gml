// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_setup_damage_text(_dmg_val, _color = c_white, _add_val = 0){
	var _plus_str = "";
	if global.gameDamageDisplay = 1 {
	    var _f = frac(_dmg_val);
	    _dmg_val = _dmg_val - _f;
		_add_val = _add_val - frac(_add_val)
	    if(_f > 0) {
	        _plus_str = "+";
	    }
	}
	var _str = "-"

	if _add_val <= 0 {
		_str = string(_dmg_val) + _plus_str;
	} else {
		_str = string(_dmg_val) + "+" + string(_add_val) + _plus_str;	
	}

	var _damage_fonts = [Weak_Damage_Font, Damage_Font, Strong_Damage_Font, Crit_Font, Big_Crit_Font]
	var _text_size = max(0, string_length(string(round(_dmg_val))) - 1)
	
	return {
		"string": _str,
		"color": _color,
		"font": _damage_fonts[min(array_length(_damage_fonts) - 1, _text_size)]
	}
}