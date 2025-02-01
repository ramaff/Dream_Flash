// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Item_Field_Count(_base_count = 2){
	
	_base_count = _base_count + floor((global.soulhope + random(100 + global.soulhope * 3)) / 100);
	
	var fr = frac(global.extraitems);
	_base_count += global.extraitems - fr;
			
	if fr > 0 {
		if scr_Chance(1 / fr) {
			_base_count += 1;
		}
	}

	return _base_count

}