function scr_Steam_Load() {

	if steam_initialised() {

	    if steam_is_cloud_enabled_for_app() {
    
	        if (steam_file_exists("steamsavegame.sav")) {

	        var file = steam_file_read("steamsavegame.sav");
        
	        var saveFile = file_text_open_write("savegame.sav");
        
	        loadFile = file_text_open_read(file);
	        dJson = file_text_read_string(loadFile);
    
	        dMap = json_decode(dJson);
        
	        var JsonDream = json_encode(dMap);
	        ds_map_destroy(dMap)
        
	        file_text_write_string(saveFile, JsonDream);
        
	        }
    
	    }

	}



}
