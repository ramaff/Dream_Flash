// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Scroll_Reco_Menu(_target_butt, _click = true){

	var _ybott = camera_get_view_y(view) + 91;
	var _ytop = camera_get_view_y(view) + 599 - 256;
	var _scrolls = 400

	while (_target_butt.y < _ybott || _target_butt.y > _ytop) and _scrolls > 0 {
		with (obj_Recollection_Scroll_Bar) {
			event_perform(ev_step, 0)
			buttony += 4;
			buttony = clamp(buttony, 0, barheight)
		}
		with (_target_butt) {
			event_perform(ev_step, 0)
			event_perform(ev_draw, 0)
		}
		_scrolls--;
		
		if _scrolls = 200 {
			with (obj_Recollection_Scroll_Bar) {
				event_perform(ev_step, 0)
				buttony = 0;
				buttony = clamp(buttony, 0, barheight)
			}
		}
	}

	with (obj_Recollection_Butt) {
		event_perform(ev_step, 0)
		event_perform(ev_draw, 0)
		event_perform(ev_mouse, ev_left_release)
	}
	if _click {
		with (_target_butt) {
			event_perform(ev_mouse, ev_left_release)
		}
	}

}