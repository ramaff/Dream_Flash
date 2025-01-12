// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_T01(){
	if global.T[1] > 0 {
		instance_create((room_width / 2) + 200,(room_height / 2) + 200, obj_Think_Again);
	}
}