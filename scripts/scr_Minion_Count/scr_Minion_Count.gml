// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Over_Minion_Count(_threshold = 3){
	_threshold = _threshold / 2;
	var _m_count = instance_number(obj_Minion_Parent);
    var _b_count = instance_number(obj_Main_Boss_Parent);
	
	if ((_m_count - _threshold) / _b_count) >= _threshold {
        return true;
    }
	
	return false;
}