// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Add_New_Heart(_heart_id, _health = 20, _health_decay = 0, _survival_hits = 0){
	
	global.currentheart++;
	
	_health = (_health * ((10 + obj_Soul_Parent.shpfactor) / 10)) + obj_Soul_Parent.shpadd;
	_survival_hits += global.B[4];
	
	Soul_Hearts_Control.heart[global.currentheart] = {
		"heart_id": _heart_id,
		"health": _health,
		"max_health": _health,
		"health_decay": _health_decay,
		"survival_hits": _survival_hits
	}
	
	scr_Update_Soul_Health(_health, global.currentheart)
}