// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Game_Reset() {

	// This will destroy all instances. 
	// Yes, this will run their cleanup events as well as their destroy event.
	with(all) {
		if object_index == __InputUpdateController {
			continue;	
		}
		instance_destroy();	
	}

	//audio_stop_all();
	
	

	// Go to the very first room, as per room order
	room_goto(room_first);
	
	//game_restart()
	
	//draw_texture_flush();

}