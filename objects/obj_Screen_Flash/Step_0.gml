/// @description Insert description here
// You can write your code in this editor
//__view_set( e__VW.Object, 0, noone );

	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	image_alpha += 1 * alpha_up / (max(flashLife, 1));
	if image_alpha > 1 {
		image_alpha = 1;
	}