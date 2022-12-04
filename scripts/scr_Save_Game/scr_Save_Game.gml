function scr_Save_Game() {
	_root_list = ds_list_create();

	//Create Map for instances
	//with instance_create(x,y,obj_Save_M) {
	    _map = ds_map_create();
	    ds_list_add(_root_list,_map);
	    ds_list_mark_as_map(_root_list,ds_list_size(_root_list) - 1);
    
	    //_obj = object_get_name(object_index);
	    //ds_map_add(_map, "obj", _obj);
	    for(j = 0; j <= 999; j++) {
	        ds_map_add(_map, "recollectionWeap" + string(j), global.recollectionWeap[j]);
	    }
	//}

	//wrap

	_wrapper = ds_map_create();
	ds_map_add_list(_wrapper, "ROOT", _root_list);

	//String

	_string = json_encode(_wrapper);
	scr_Save_String_To_File("savegame.sav", _string);

	//Nuke Data

	ds_map_destroy(_wrapper);
	show_debug_message("game saved");




}
