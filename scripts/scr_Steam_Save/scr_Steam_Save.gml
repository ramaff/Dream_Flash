function scr_Steam_Save() {

	if steam_initialised() {

	    if steam_is_cloud_enabled_for_app() {

	        if (steam_file_exists("steamsavegame.sav")) steam_file_delete("steamsavegame.sav");
	        steam_file_write_file("steamsavegame.sav", "savegame.sav");
    
	    }

	}



}
