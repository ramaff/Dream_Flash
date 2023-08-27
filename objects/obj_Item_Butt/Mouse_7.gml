/// @description Insert description here
// You can write your code in this editor

with instance_create(x,y,obj_Recollection_Menu_Butt) {
	event_perform(ev_mouse, ev_left_press)
}
with (obj_Recollection_Category_Butt) {
	if cat = 2 {
		event_perform(ev_mouse, ev_left_press)
	}
}
var _target_butt = noone
with (obj_Recollection_Butt) {
	if itemVal = other.itemVal {
		_target_butt = id
	}
}
var _ybott = camera_get_view_y(view) + 91;
var _ytop = camera_get_view_y(view) + 599 - 256;

while _target_butt.y < _ybott || _target_butt.y > _ytop {
	with (obj_Recollection_Scroll_Bar) {
		event_perform(ev_step, 0)
		buttony += 2;
	}
	with (_target_butt) {
		event_perform(ev_step, 0)
		event_perform(ev_draw, 0)
	}
}

with (obj_Recollection_Butt) {
	event_perform(ev_step, 0)
	event_perform(ev_draw, 0)
	event_perform(ev_mouse, ev_left_press)
}
with (_target_butt) {
	event_perform(ev_mouse, ev_left_press)
}

