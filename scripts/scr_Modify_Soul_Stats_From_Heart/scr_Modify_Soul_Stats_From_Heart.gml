// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Modify_Soul_Stats_From_Heart(_heart_stats, _fact) {
	if variable_struct_exists(_heart_stats, "ssize") {
		global.soulsize += _heart_stats.ssize * _fact;
	    obj_Soul_Parent.ssize += _heart_stats.ssize * _fact;
	}
	if variable_struct_exists(_heart_stats, "spowerfactor") {
		global.soulpowerfactor += _heart_stats.spowerfactor * _fact;
	    obj_Soul_Parent.spowerfactor += _heart_stats.spowerfactor * _fact;
	}
	if variable_struct_exists(_heart_stats, "sshotsizefactor") {
		global.soulshotsizefactor += _heart_stats.sshotsizefactor * _fact;
	    obj_Soul_Parent.sshotsizefactor += _heart_stats.sshotsizefactor * _fact;
	}
	if variable_struct_exists(_heart_stats, "sdelayconservationfactor") {
		global.souldelayconservationfactor += _heart_stats.sdelayconservationfactor * _fact;
	    obj_Soul_Parent.sdelayconservationfactor += _heart_stats.sdelayconservationfactor * _fact;
	}
	if variable_struct_exists(_heart_stats, "smovementfactor") {
		global.soulmovementfactor += _heart_stats.smovementfactor * _fact;
	    obj_Soul_Parent.smovementfactor += _heart_stats.smovementfactor * _fact;
	}
	if variable_struct_exists(_heart_stats, "senergyregenfactor") {
		global.soulenergyregenfactor += _heart_stats.senergyregenfactor * _fact;
	    obj_Soul_Parent.senergyregenfactor += _heart_stats.senergyregenfactor * _fact;
	}
}