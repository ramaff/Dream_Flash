// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Delete_File_Backup(_file_name = "file"){
	
	var _backup_save_file = _file_name + "backup.sav"
	
	if (file_exists(_backup_save_file)) {
		file_delete(_backup_save_file);
	}
}