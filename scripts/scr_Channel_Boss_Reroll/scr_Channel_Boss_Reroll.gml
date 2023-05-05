// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// location item click

function scr_Channel_Boss_Reroll(){

	var bosstype = scr_State_Boss_Choose(true);
	
	if bosstype != noone {
		for (i = 0; i <= global.maxRooms + global.extraRooms; i++) {
			if Floor_Layout_Control.Flash[i,0] = "State" {
				Floor_Layout_Control.Flash[i,21] = bosstype; // Boss Type or Item Type
			    Floor_Layout_Control.Flash[i,22] = 0; // Boss Champ or Second Item
			    Floor_Layout_Control.Flash[i,23] = 0; // Boss Boost or Third Item	
			}
		}
	}

}