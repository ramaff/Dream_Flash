// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shuffle_Pool_List(_array){
	var _len = array_length(_array), _last = 0, _i = 0;
	while(_len) {
		_i = irandom(--_len);
		_last = _array[_len];
		_array[_len] = _array[_i];
		_array[_i] = _last;
	}
	return _array;
}