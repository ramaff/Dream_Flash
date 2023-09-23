// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// location item click

function scr_Channel_Boss_Reroll(){

	var bosstype = scr_State_Boss_Choose(true);
	
	if bosstype != noone {
		for (i = 0; i <= global.maxRooms + global.extraRooms; i++) {
			if global.floor[i,0] = "State" {
				global.floor[i,21] = bosstype; // Boss Type or Item Type
			    global.floor[i,22] = 0; // Boss Champ or Second Item
			    global.floor[i,23] = 0; // Boss Boost or Third Item	
			}
		}
	}

}