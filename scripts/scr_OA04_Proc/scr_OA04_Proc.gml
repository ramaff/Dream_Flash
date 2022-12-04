// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OA04_Proc(){
	if scr_Chance(4) and shotwishful > 0 {
		shotpower += shotpower * 0.1 * shotwishful;
		shotPowerLevel += shotPowerLevel * 0.1 * shotwishful;
		
		shotsizemax = min(shotsizemax + (0.05 * shotwishful), 1);
		shotsize = shotsizemax;
		image_xscale = shotsize;
		image_yscale = shotsize;
	}
}