// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Heart_Loss_Handle_All(_heart) {
	if _heart.heart_id = 6 {
		if global.H06refill < 0 {
			global.H06refill = 0;	
		}
		global.H06refill += (3 / global.soulheartboost);
	}
		
	if obj_Soul_Parent.soulDeathFadeSpeed = 0 {
	    instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_Broken_Heart);
	}
	
	scr_Heart_Loss_Event(_heart.heart_id);
	scr_L04();
}
