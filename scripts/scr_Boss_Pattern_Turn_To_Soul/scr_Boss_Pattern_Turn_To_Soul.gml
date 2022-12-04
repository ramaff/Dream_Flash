// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Pattern_Turn_To_Soul(dir, turnspeed) {

	var souldir = scr_Soul_Point();
	var adif = angle_difference(dir, souldir);
	if adif < 0 {
	    dir += min(turnspeed, abs(adif));
	}
	if adif > 0 {
	    dir -= min(turnspeed, abs(adif));
	}	

	return dir;
}