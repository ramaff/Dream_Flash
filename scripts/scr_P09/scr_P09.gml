// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_P09(_cw) {

	if global.P[9] > 0 {
		var _procs = scr_Item_Sometimes_Trigger_Check(global.P[9], 7) 
		if _procs >= 1 {
			_cw.Shot_Count = 5 * _cw.Shot_Count
			_cw.Shot_Spread = 360 / _cw.Shot_Count
		}
	}

}