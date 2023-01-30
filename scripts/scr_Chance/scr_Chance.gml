// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Chance(outta){
	
	if random(outta) >= (outta - 1) {
		return true;
	}
	
	return false;
}