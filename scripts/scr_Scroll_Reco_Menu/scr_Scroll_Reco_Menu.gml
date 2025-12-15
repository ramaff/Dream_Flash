// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Scroll_Reco_Menu(_target_butt){

	var _ybott = camera_get_view_y(view) + 91;
	var _ytop = camera_get_view_y(view) + 599 - 256;
	var _scrolls = 50

	while (_target_butt.y < _ybott || _target_butt.y > _ytop) and global.scrollperc < 1 and _scrolls > 0 {
		with (obj_Recollection_Scroll_Bar) {
			event_perform(ev_step, 0)
			buttony += 2;
			buttony = buttony mod barheight
		}
		with (_target_butt) {
			event_perform(ev_step, 0)
			event_perform(ev_draw, 0)
		}
		_scrolls--;
	}

	with (obj_Recollection_Butt) {
		event_perform(ev_step, 0)
		event_perform(ev_draw, 0)
		event_perform(ev_mouse, ev_left_press)
	}
	with (_target_butt) {
		event_perform(ev_mouse, ev_left_press)
	}

}