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