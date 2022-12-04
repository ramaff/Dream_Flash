function scr_Load_JSON_From_File() {
	//var _filename = argument[0];
	_filename = "savegame.sav";

	_buffer = buffer_load(_filename);
	_string = buffer_save(_buffer, buffer_string);
	buffer_delete(_buffer);

	_json = json_decode(_string);
	return _json;



}
