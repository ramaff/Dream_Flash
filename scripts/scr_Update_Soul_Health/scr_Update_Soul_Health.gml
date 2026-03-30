// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Update_Soul_Health(_health, _slot = global.currentheart) {
	if _slot > global.currentheart {
		exit;
	}
	var _hearts = Soul_Hearts_Control.heart
	if array_length(_hearts) <= 0 {
		exit;
	}
	
	var _heart = _hearts[_slot]
	
	_heart.health = _health
	if _heart.health <= 0 {
		
		if _heart.survival_hits > 0 {
			_heart.survival_hits--;
			_heart.health = 1;
		} else {
		
			array_delete(_hearts, _slot, 1)
			instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_Broken_Heart);
			global.currentheart = array_length(_hearts) - 1;
			scr_Heart_Loss_Handle_All(_heart);
			if global.currentheart < 0 {
				exit;	
			}
			_heart = _hearts[global.currentheart]
			scr_Swap_Heart(_heart.heart_id);
		}
	}
	var _real_cap = _heart.max_health - _heart.health_decay;
	if _heart.health > _real_cap {
		_heart.health = _real_cap
	}
	
	shealth = _heart.health
	
}

function scr_Heart_Loss_Handle_All(_heart) {
	if _heart.heart_id = 6 {
		if global.H06refill < 0 {
			global.H06refill = 0;	
		}
		global.H06refill += (3 / global.soulheartboost);
	}
		
	if obj_Soul_Parent.soulDeathFadeSpeed = 0 {
	    instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_Broken_Heart);
	}
	
	scr_Heart_Loss_Event(_heart.heart_id);
	scr_L04();
}

function scr_Swap_Heart(_heart_id) {
	var _heart_stats = Soul_Hearts_Control.current_heart_stats;
	
	scr_Modify_Soul_Stats_From_Heart(_heart_stats, -1 * global.soulheartboost);
	
	switch(_heart_id) {
	
		case 2:
			_heart_stats = {
				"ssize": -0.3,
				"spowerfactor": -2,
				"sshotsizefactor": -0.3,
				"sdelayconservationfactor": 0.4,
				"smovementfactor": 0.3
			}
			break;
		case 4:
			_heart_stats = {
				"ssize": 0.3,
				"spowerfactor": 3,
				"sshotsizefactor": 0.3,
				"sdelayconservationfactor": -0.2,
				"smovementfactor": -0.3
			}
			break;
		default:
			_heart_stats = {}
	}
	Soul_Hearts_Control.current_heart_stats = _heart_stats
	
	scr_Modify_Soul_Stats_From_Heart(Soul_Hearts_Control.current_heart_stats, 1 * global.soulheartboost)
	
}

function scr_Modify_Soul_Stats_From_Heart(_heart_stats, _fact) {
	if variable_struct_exists(_heart_stats, "ssize") {
		global.soulsize += _heart_stats.ssize * _fact;
	    obj_Soul_Parent.ssize += _heart_stats.ssize * _fact;
	}
	if variable_struct_exists(_heart_stats, "spowerfactor") {
		global.soulpowerfactor += _heart_stats.spowerfactor * _fact;
	    obj_Soul_Parent.spowerfactor += _heart_stats.spowerfactor * _fact;
	}
	if variable_struct_exists(_heart_stats, "sshotsizefactor") {
		global.soulshotsizefactor += _heart_stats.sshotsizefactor * _fact;
	    obj_Soul_Parent.sshotsizefactor += _heart_stats.sshotsizefactor * _fact;
	}
	if variable_struct_exists(_heart_stats, "sdelayconservationfactor") {
		global.souldelayconservationfactor += _heart_stats.sdelayconservationfactor * _fact;
	    obj_Soul_Parent.sdelayconservationfactor += _heart_stats.sdelayconservationfactor * _fact;
	}
	if variable_struct_exists(_heart_stats, "smovementfactor") {
		global.soulmovementfactor += _heart_stats.smovementfactor * _fact;
	    obj_Soul_Parent.smovementfactor += _heart_stats.smovementfactor * _fact;
	}
}