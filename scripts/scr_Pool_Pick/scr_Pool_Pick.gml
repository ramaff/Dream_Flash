// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Pool_Pick(pool){
	var itemtype = "00";
	if ds_list_empty(pool) {
		scr_Pool_Refill(pool);
	}
	/*if array_length(pool) = 0 {
		scr_Pool_Refill(pool);	
	} 
	scr_Shuffle_Pool_List(pool); */
	itemtype = ds_list_find_value(pool, 0);
	ds_list_delete(pool, 0);
	//show_debug_message(pool)
	//itemtype = variable_struct_get(pool, 0);
	//variable_struct_remove(pool, 0);
	
	return itemtype;
	/*
	if array_length(pool) > 0 {
		itemtype = pool[0];
		array_delete(pool, 0, 1);
		return itemtype;
	} */
}