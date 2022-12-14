// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Minion_Count(){
	var mCount = instance_number(obj_Minion_Parent);
    var bCount = instance_number(obj_Main_Boss_Parent);
	
	var mT = false;
	
	if ((mCount - 3) / bCount) >= 3 {
        mT = true;
    }
	
	return mT;
}