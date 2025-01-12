// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Accel_From_DTV(_dist, _time, _vel){

	return ((2 * _dist) / (_time * _time)) - ((2 * _vel) / _time)

}