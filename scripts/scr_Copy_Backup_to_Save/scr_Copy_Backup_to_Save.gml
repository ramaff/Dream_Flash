// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_copy_backup_to_save(_save_file = "file.sav", _backup_save_file = "file_backup.sav"){
	if (file_exists(_backup_save_file)) {
		file_copy(_backup_save_file, _save_file);
		file_delete(_backup_save_file);
	}
}