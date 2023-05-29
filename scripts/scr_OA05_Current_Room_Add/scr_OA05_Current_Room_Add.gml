// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OA05_Current_Room_Add(){
	
	// Location: Stat_Field_Spawn_Check


	if global.OA[5] >= 1 {
		var oacount = 1 + global.OA[5];
		if scr_Chance(2) {
			for(var i = 0; i < oacount; i++) {
				global.OA5rooms[global.currentroom][i] = scr_Pick_Pool_Letter();
			}
			
			return true
		}
	}
	
	return false

}