// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Shot_Cleanup(){
	if ds_exists(bullet_hits, ds_type_list) {
		ds_list_destroy(bullet_hits);
	}

}