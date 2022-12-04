// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Power_Down(){
	if sstatecharge <= 0 {
		scurrentstate = "Base";	
	}
	
	scr_State_Stats();
}