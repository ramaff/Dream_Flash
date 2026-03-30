// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Heart Control Step

function scr_H05(){
	if global.currenthearttype = 5 {
		if global.H5timer >= 60 {
			if obj_Soul_Parent.shealth >= obj_Soul_Parent.smaxhealth {
				scr_Refresh_Soul(5);
			} else if obj_Soul_Parent.senergy >= obj_Soul_Parent.smaxenergy {
				scr_Heal_Soul(1);	
			}
			global.H5timer = 0;
		}
		global.H5timer++;
	}
}