// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Chance(outta){
	var val = random(outta);
	var outcome = false;
	
	if val >= (outta - 1) {
		outcome = true;
	}
	
	return outcome;
}