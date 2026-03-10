// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Update_Soul_Health(_health, _slot = global.currentheart){
	var _hearts = Soul_Hearts_Control.heart
	var _heart = _hearts[_slot]
	
	_heart.health = _health
	if _heart.health <= 0 {
		//scr_Swap_Heart();	
		array_delete(_hearts, _slot, 1)
		global.currentheart = array_length(_hearts) - 1;
		if global.currentheart < 0 {
			exit;	
		}
		_heart = _hearts[global.currentheart]
	}
	
	shealth = _heart.health
	
}