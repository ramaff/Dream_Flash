// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OA03(){
	var roomtype = global.floor[global.currentroom,0];
	if global.OA[3] > 0 and roomtype != "Emotion Field" and roomtype != "Weapon Field" {
		instance_create((room_width / 2) - 200,(room_height / 2) + 200, obj_Feeling_Lucky);
	}
}