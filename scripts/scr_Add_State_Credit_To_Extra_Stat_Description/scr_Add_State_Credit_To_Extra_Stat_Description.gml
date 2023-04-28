// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Add_State_Credit_To_Extra_Stat_Description(recollection_stats){

	state_description = ""

	if variable_struct_exists(recollection_stats, "Snake_Credit") {
		if recollection_stats.Snake_Credit = 0.5 {
			state_description += " +1/2 Snake Credits"
		}
		if recollection_stats.Snake_Credit = 1 {
			state_description += " +1 Snake Credit"
		}
	}
	if variable_struct_exists(recollection_stats, "Beast_Credit") {
		if recollection_stats.Beast_Credit = 0.5 {
			state_description += " +1/2 Beast Credits"
		}
		if recollection_stats.Beast_Credit = 1 {
			state_description += " +1 Beast Credit"
		}
	}
	if variable_struct_exists(recollection_stats, "Mech_Credit") {
		if recollection_stats.Mech_Credit = 0.5 {
			state_description += " +1/2 Mech Credits"
		}
		if recollection_stats.Mech_Credit = 1 {
			state_description += " +1 Mech Credit"
		}
	}
	if variable_struct_exists(recollection_stats, "Scrub_Credit") {
		if recollection_stats.Scrub_Credit = 0.5 {
			state_description += " +1/2 Scrub Credits"
		}
		if recollection_stats.Scrub_Credit = 1 {
			state_description += " +1 Scrub Credit"
		}
	}
	if variable_struct_exists(recollection_stats, "Spike_Credit") {
		if recollection_stats.Spike_Credit = 0.5 {
			state_description += " +1/2 Spike Credits"
		}
		if recollection_stats.Spike_Credit = 1 {
			state_description += " +1 Spike Credit"
		}
	}
	if variable_struct_exists(recollection_stats, "Bleeding_Credit") {
		if recollection_stats.Bleeding_Credit = 0.5 {
			state_description += " +1/2 Bleeding Credits"
		}
		if recollection_stats.Bleeding_Credit = 1 {
			state_description += " +1 Bleeding Credit"
		}
	}
	if variable_struct_exists(recollection_stats, "Casting_Credit") {
		if recollection_stats.Casting_Credit = 0.5 {
			state_description += " +1/2 Casting Credits"
		}
		if recollection_stats.Casting_Credit = 1 {
			state_description += " +1 Casting Credit"
		}
	}
	if variable_struct_exists(recollection_stats, "Ascending_Credit") {
		if recollection_stats.Ascending_Credit = 0.5 {
			state_description += " +1/2 Ascending Credits"
		}
		if recollection_stats.Ascending_Credit = 1 {
			state_description += " +1 Ascending Credit"
		}
	}
	
	
	return state_description;

}