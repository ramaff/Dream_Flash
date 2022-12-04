// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: Soul Parent Alarm 2

function scr_OC02(cHeart) {
	if cHeart = 52 {
		if ((global.OC[2] > 0) and (!instance_exists(obj_Security_Guard))) {
		    repeat(global.OC[2]) {
		        with instance_create(x,y,obj_Security_Guard) {
					followtarget = obj_Soul_Parent;
					scr_Minion_Follow_Adjust();	
				}
		    }
		}	
	}/*
		if (!instance_exists(obj_Security_Guard)) {
		    with instance_create(x,y,obj_Security_Guard) {
				followtarget = obj_Soul_Parent;
				scr_Minion_Follow_Adjust();	
			}
		}	*/
}