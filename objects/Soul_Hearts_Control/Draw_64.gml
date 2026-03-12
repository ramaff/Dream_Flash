/// @description Insert description here
// You can write your code in this editor
if (Pause_Control.pause) {
	exit;	
}

var click = mouse_check_button_pressed(mb_left);
var _no_boss = !scr_Boss_Fight()
var x1 = camera_get_view_x(view);
var y1 = camera_get_view_y(view);
var _scale = 2 / Camera_Control.view_zoom

var mxx = (obj_Indicator_Parent.x - x1) * _scale
var myy = (obj_Indicator_Parent.y - y1) * _scale

var _space = 45 * _scale;
var yy = 24 * _scale;
var _half_heart_size = (16 * _scale)
var _correct_y = (abs(myy - yy) < _half_heart_size)

var _to_swap = -1;

var _i;
var _max = array_length(heart);

for(_i = 0; _i < _max; _i++) {

	var xx = (1.5*_half_heart_size) + _space * _i;

	if (abs(mxx - xx) < _half_heart_size) && _correct_y && _no_boss {
		//show_debug_message("mxx: " + string(mxx) + ", x: " + string(x) + ", myy: " + string(myy) + ", y: " + string(y))
	    draw_set_color(c_white);
	   //if (Soul_Hearts_Control.heart[slot] != 0) {
	        draw_rectangle(xx-_half_heart_size,yy-_half_heart_size,xx+_half_heart_size,yy+_half_heart_size,0);
	    //}
	    if (click) {
			_to_swap = _i;
	        /*if (global.mousehearttype != 0) {
	            scr_Heart_Drop_Slot();
	        } 
	        else if (global.mouseheartslot = 0) {
	            scr_Heart_Pickup_Slot()
	        } */
	    }
	}

	scr_Draw_Heart_Status(heart[_i], 0.5, xx, yy);

}

if _to_swap != -1 {
	var _old_heart = heart[_to_swap];
	
	array_delete(heart, _to_swap, 1)
	heart[array_length(heart)] = _old_heart
	
	scr_Swap_Heart(_old_heart.heart_id)	
}
