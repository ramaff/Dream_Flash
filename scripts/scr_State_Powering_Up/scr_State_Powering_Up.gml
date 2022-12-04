// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Powering_Up(){
	obj_Soul_Parent.statepoweruptime--;
	
	if obj_Soul_Parent.statepoweruptime <= 0 and scurrentstate = "Powering Up" {
		scurrentstate = stransformedstate;	
		scr_F08();
	}
}