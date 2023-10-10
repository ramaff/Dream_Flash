// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// scr_Current_Heart_Stats

function scr_B06(){
	
	var _heart_type = Soul_Hearts_Control.heart[i,2]
	if _heart_type == 1 || _heart_type == 51 || _heart_type == 53 || _heart_type == 103 {
		Soul_Hearts_Control.heart[i,2] = 2 + irandom(15)
		Soul_Hearts_Control.heart[i,2] = choose(2,3,4,5,6,8,9,10,11,12,13,14,15,16,17)
		if Soul_Hearts_Control.heart[i,2] = 6 {
			global.H[6]++;
		}
		
		global.B06HeartConversions--;
	}
}