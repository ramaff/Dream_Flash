// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_setup_dmg_indicator(_xx = x, _yy = y, _dmg_amt = 0, _color = c_white, _add_amt = 0){

	with instance_create(_xx - 20 + random(40), _yy - 20 + random(40), obj_Damage_Indicator) {
		dmg_info = scr_setup_damage_text(_dmg_amt, _color, _add_amt)
		direction = 60 + random(60);
		speed = 2 + sqrt(abs(_dmg_amt))
		alarm[0] = 45 + random(15) + (speed * 2);
	}

}