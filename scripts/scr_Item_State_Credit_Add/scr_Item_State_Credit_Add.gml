// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Item_State_Credit_Add(itemVal){

	var current_item_stats = variable_struct_get(global.item_stats, string(itemVal))
	
	if variable_struct_exists(current_item_stats, "Snake_Credit") {
		global.snakeprogress += current_item_stats.Snake_Credit
	}
	if variable_struct_exists(current_item_stats, "Beast_Credit") {
		global.beastprogress += current_item_stats.Beast_Credit
	}
	if variable_struct_exists(current_item_stats, "Mech_Credit") {
		global.mechprogress += current_item_stats.Mech_Credit
	}
	if variable_struct_exists(current_item_stats, "Scrub_Credit") {
		global.scrubprogress += current_item_stats.Scrub_Credit
	}
	if variable_struct_exists(current_item_stats, "Spike_Credit") {
		global.spikeprogress += current_item_stats.Spike_Credit
	}
	if variable_struct_exists(current_item_stats, "Bleeding_Credit") {
		global.bleedingprogress += current_item_stats.Bleeding_Credit
	}
	if variable_struct_exists(current_item_stats, "Casting_Credit") {
		global.castingprogress += current_item_stats.Casting_Credit
	}
	if variable_struct_exists(current_item_stats, "Ascending_Credit") {
		global.ascendingprogress += current_item_stats.Ascending_Credit
	}
	
	//var credAdd = 0;
	//var stateToAdd = "None"

	/*
	if variable_struct_exists(current_item_stats, "State_Extra_Stats") {
		var State_Credit_String = current_item_stats.State_Extra_Stats
	} else {
		exit;	
	}
	
	if State_Credit_String {
		credAdd = 1;	
	}
	
	// If state credit string contains 1/2
		{
			credAdd = 0.5	
		}
		*/

}