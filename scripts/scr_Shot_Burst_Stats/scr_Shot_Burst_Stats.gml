// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Burst_Stats(vshotairburststats){
	
	if variable_struct_exists(vshotairburststats, "Burst_Power") {
		shotpower = shotpower * vshotairburststats.Burst_Power
		//show_debug_message(shotpower)
		shotpowermax = shotpower;
	}
	if variable_struct_exists(vshotairburststats, "Burst_Soul_Shot_Damage") {
		shotsouldamage = vshotairburststats.Burst_Soul_Shot_Damage;
		shotspeed = sqrt(shotspeed) + 3;
		speed = shotspeed;
		shotlifespan = shotlifespan + 60;
	    alarm[0] = shotlifespan;
		shottimer = shotlifespan;
	}
	if variable_struct_exists(vshotairburststats, "Burst_Size") {
		shotsize = shotsize * vshotairburststats.Burst_Size
		image_xscale = shotsize;
		image_yscale = shotsize;
		shotsizemax = other.shotsizemax;
	}
	if variable_struct_exists(vshotairburststats, "Shot_Sprite") {
		//show_debug_message(vshotburststats.Shot_Sprite)
		sprite_index = asset_get_index(vshotairburststats.Shot_Sprite)
	}

}