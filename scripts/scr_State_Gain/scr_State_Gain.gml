// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Gain(amt){
	if global.soultransformedstate != "Base" {
		amt = amt / (10 + (10 * global.currentchapter));
		
		if Floor_Layout_Control.Flash[global.currentroom,0] = "Super Boss" and global.F[7] >= 1 {
			amt = amt * 3;
		}
		
		if obj_Soul_Parent.scurrentstate != "Base" {
			amt = amt / 4;
		}
		obj_Soul_Parent.sstatecharge += amt * global.soulstategainfactor * ((40 + global.soulstate + global.soulstateTemp) / 40);
		//obj_Soul_Parent.sstatecharge += 50;
	}
} 