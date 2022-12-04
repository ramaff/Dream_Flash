/// @description Insert description here
// You can write your code in this editor
//__view_set( e__VW.Object, 0, noone );

if shake = 1 {
	
	var rx = -shakeStrength + irandom(shakeStrength * 2);
	var ry = -shakeStrength + irandom(shakeStrength * 2);
	
	//Camera_Control.camX += rx;
	//Camera_Control.camY += ry;
	
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	camera_set_view_pos(view, _cur_x + rx, _cur_y + ry);
	
	//camera_set_view_pos(view_camera[0],xxx + rx, yyy + ry);	
	/*
	__view_set( e__VW.XView, 0, floor(xxx + rx));
	__view_set( e__VW.YView, 0, floor(yyy + ry));
	
	xxx = __view_get( e__VW.XView, 0 )
	yyy = __view_get( e__VW.YView, 0 )
	*/
	
	shakeStrength -= shakeStrength / shakeLife;
	
}