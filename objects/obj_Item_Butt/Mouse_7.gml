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

scr_Scroll_Reco_Menu(_target_butt)

