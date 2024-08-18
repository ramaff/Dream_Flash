// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Cramming_Use(){
	scr_Default_Weapon_Stats();
	
	var rType = Floor_Layout_Control.Flash[global.currentroom,0];
	if rType = "Spawn" || rType = "Normal" || rType = "Boss" || rType = "Super Boss" || rType = "Shop" || rType = "Chamber" || rType = "State" {
		exit;
	}
	
	with (obj_Item_Parent) {
		scr_Item_Click();
	}
	
}