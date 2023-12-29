// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Handle_File_Backup(_save_file, _backup_save_file){
	
	if (file_exists(_save_file)) {
		file_copy(_save_file, _backup_save_file);
		file_delete(_save_file);
	}
	
	/*
	if (file_exists(_save_file)) {
		file_copy(_save_file, _backup_save_file);
		file_delete(_save_file);
	} else {
		if (file_exists(_backup_save_file)) {
			file_copy(_backup_save_file, _save_file);
		}
	} */
}