// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Game_Reset() {

	with(all) {
		if object_index == __InputUpdateController {
			continue;	
		}
		instance_destroy();	
	}

	audio_stop_all();
	
	room_goto(Title_Screen);
}