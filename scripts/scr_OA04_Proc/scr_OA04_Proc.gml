// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OA04_Proc(){
	if shotwishful > 0 {
		shotpower += 0.2 + (shotpower * 0.02 * shotwishful);
		shotPowerLevel += 0.2 + (shotPowerLevel * 0.02 * shotwishful);
		//scr_Shot_Power_Set(1 + 0.025 * shotwishful)
		
		shotsizemax = sqrt((shotsizemax * shotsizemax) + (0.05 * shotwishful));
		shotsize = shotsizemax;
		image_xscale = shotsize;
		image_yscale = shotsize;
	}
}