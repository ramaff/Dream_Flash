// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: Item Field SPawn check, also create script for the item room object

function scr_OA05(){
	with instance_create(room_width/2,room_height/2,obj_Anything_Field) {
		sprite_index = spr_Anything_Field
		fieldColor = make_color_rgb(255,50,255);
	}
}