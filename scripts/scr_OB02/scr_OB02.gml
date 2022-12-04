// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OB02(){
// Location: Soul Shot Step

	if global.OB[2] > 0 {
		shotangularvelocity += choose(-1, 0, 0, 0, 0, 0, 0, 0, 0, 1) * global.OB[2];
		shotangularvelocity = clamp(shotangularvelocity, -2 * global.OB[2], 2 * global.OB[2]);
	}

	//if global.OA[4] >= 1 {
	    //if obj_Soul_Parent.senergy >= 50 {
	//	shotwishful += global.OA[4];
	//}
}