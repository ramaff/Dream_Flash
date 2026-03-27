/// @description Insert description here
// You can write your code in this editor

if (Pause_Control.pause) {
	exit;	
}

var _i;
var _max = array_length(heart);
var _not_leavable = !scr_Room_Leavable()

for(_i = 0; _i < _max; _i++) {
	if _not_leavable {
	    heart[_i].health += obj_Soul_Parent.shealthregenfactor * ((10 + obj_Soul_Parent.shealthregenadd) / 10) / 4;   
	} else {
	    heart[_i].health += obj_Soul_Parent.shealthregenfactor * ((10 + obj_Soul_Parent.shealthregenadd) / 10) * 100;   
		heart[_i].survival_hits = heart[_i].max_survival_hits
	}
	var _real_cap = heart[_i].max_health - heart[_i].health_decay;
	if heart[_i].health > _real_cap {
		heart[_i].health = _real_cap
	}
}
obj_Soul_Parent.shealth = heart[_max-1].health;

alarm[0] = 30;