function scr_Load_Game() {
	if file_exists("savegame.sav") {

	    //_wrapper = scr_Load_JSON_From_File("savegame.sav");
	    _list = _wrapper[? "ROOT"];
	    //var _list = ds_map_find_value(_wrapper,"ROOT");
    
	    //if(_list != undefined) {
	        //for(i = 0; i < ds_list_size(_list); i++) {
	            for(j = 0; j <= 999; j++) {
	                _map = _list[| j];
	                //var _map = ds_map_find_value(_wrapper,"ROOT");
	                //_obj = map[? "obj"];
	                //with instance_create(x,y,asset_get_index(_obj)) {
	                for(j = 0; j <= 999; j++) {
	                    global.recollectionWeap[j] = _map[? "recollectionWeap" + string(j)]
	                }
	            //}
	            }
	       // }
	    //}
    
	    ds_map_destroy(_wrapper);
	    show_debug_message("Game Loaded");
	}



}
