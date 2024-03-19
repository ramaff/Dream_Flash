// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Active_Check(state = "None"){
	
	var reverie = false;
	if global.F[5] >= 1 {
		reverie = scr_Chance(10 / global.F[5]);
	}

	return (obj_Soul_Parent.scurrentstate == state || (obj_Soul_Parent.stransformedstate == state and reverie == true))

}