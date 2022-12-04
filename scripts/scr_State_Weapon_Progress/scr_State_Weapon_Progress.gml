// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Weapon_Progress(itemVal, add){
	
	var current_weapon_stats = variable_struct_get(global.weapon_stats, string(itemVal))
	
	if variable_struct_exists(current_weapon_stats, "Snake_Credit") {
		global.snakeprogress += current_weapon_stats.Snake_Credit * add
	}
	if variable_struct_exists(current_weapon_stats, "Beast_Credit") {
		global.beastprogress += current_weapon_stats.Beast_Credit * add
	}
	if variable_struct_exists(current_weapon_stats, "Mech_Credit") {
		global.mechprogress += current_weapon_stats.Mech_Credit * add
	}
	if variable_struct_exists(current_weapon_stats, "Scrub_Credit") {
		global.scrubprogress += current_weapon_stats.Scrub_Credit * add
	}
	if variable_struct_exists(current_weapon_stats, "Spike_Credit") {
		global.spikeprogress += current_weapon_stats.Spike_Credit * add
	}
	if variable_struct_exists(current_weapon_stats, "Bleeding_Credit") {
		global.bleedingprogress += current_weapon_stats.Bleeding_Credit * add
	}
	if variable_struct_exists(current_weapon_stats, "Casting_Credit") {
		global.castingprogress += current_weapon_stats.Casting_Credit * add
	}
	
	/*
	if itemVal = 12 || itemVal = 13 || itemVal = 14 || itemVal = 402 || itemVal = 7 || itemVal = 116 {
		global.snakeprogress += 0.5 * add;	
	}
	if itemVal = 15 || itemVal = 407 {
		global.scrubprogress += 0.5 * add;	
	}
	if itemVal = 16 {
		global.spikeprogress += 0.5 * add;
	}
	if itemVal = 53 || itemVal = 151 || itemVal = 152 || itemVal = 153 || itemVal = 603 {
		global.bleedingprogress += 0.5 * add;	
	}
	if itemVal = 52 || itemVal = 51 || itemVal = 54 {
		global.beastprogress += 0.5 * add;
	}
	if itemVal = 307 {
		global.scrubprogress += 1 * add;	
	}
	if itemVal = 314 {
		global.spikeprogress += 0.5 * add;
	}
	if itemVal = 309 {
		global.scrubprogress += 1 * add;
	}
	if itemVal = 311 {
		global.castingprogress += 0.5 * add;
		global.scrubprogress += 0.5 * add;
	}
	if itemVal = 313 {
		global.beastprogress += 1 * add;	
	}
	if itemVal = 409 {
		global.castingprogress += 0.5 * add;
	}
	if itemVal > 1 and itemVal < 100 {
		global.spikeprogress += 0.5 * add;
	}
	if itemVal > 100 and itemVal < 200 {
		global.bleedingprogress += 0.5 * add;
	}
	if itemVal > 300 and itemVal < 400 {
		global.castingprogress += 0.5 * add;
	}
	if itemVal > 500 and itemVal < 505 and itemVal != 503 {
		global.mechprogress += 0.5 * add;
	}
	if itemVal = 504 {
		global.bleedingprogress += 1 * add;
	}
	if itemVal = 505 {
		global.mechprogress += 1 * add;
	}
	*/
}