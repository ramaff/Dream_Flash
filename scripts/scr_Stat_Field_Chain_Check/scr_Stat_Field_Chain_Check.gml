// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Stat_Field_Chain_Check(){
	scr_Stat_Field_Check();
	if global.floor[global.currentroom,0] != "Normal" and instance_number(obj_Item_Parent) = 0 {
		scr_Stat_Field_Spawn_Check();
	}
	if instance_number(obj_Item_Parent) = 0 and instance_number(obj_Potential_For_Anything) = 0 {
	    global.floor[global.currentroom,0] = "Normal"
	}
}