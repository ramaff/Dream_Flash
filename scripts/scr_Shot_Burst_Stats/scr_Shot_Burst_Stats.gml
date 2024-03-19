// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Burst_Stats(vshotburststats){
	
	/*if variable_struct_exists(vshotburststats, "Shot_Power") {
		shotpower = vshotburststats.Shot_Power
		//show_debug_message(shotpower)
		shotpowermax = shotpower;
	} */
	if variable_struct_exists(vshotburststats, "Burst_Power") {
		shotpower = shotpower * vshotburststats.Burst_Power;
		shotaurapower = shotaurapower * vshotburststats.Burst_Power;
		shotpowermax = shotpower;
	} else {
		shotpower = vshotburststats.Shot_Power;
		shotaurapower = vshotburststats.Shot_Power;
		shotpowermax = shotpower;	
	}
	if variable_struct_exists(vshotburststats, "Burst_Soul_Shot_Damage") {
		shotsouldamage = vshotburststats.Burst_Soul_Shot_Damage;
		shotspeed = sqrt(shotspeed) + 3;
		speed = shotspeed;
		shotlifespan = shotlifespan + 60;
	    alarm[0] = shotlifespan;
		shottimer = shotlifespan;
	}
	if variable_struct_exists(vshotburststats, "Burst_Size") {
		shotsize = shotsize * vshotburststats.Burst_Size
		image_xscale = shotsize;
		image_yscale = shotsize;
		shotsizemax = other.shotsizemax;
	}
	if variable_struct_exists(vshotburststats, "Shot_Sprite") {
		//show_debug_message(vshotburststats.Shot_Sprite)
		sprite_index = asset_get_index(vshotburststats.Shot_Sprite)
	}
	if variable_struct_exists(vshotburststats, "Shot_Lifespan") {
		shotlifespan = vshotburststats.Shot_Lifespan
		alarm[0] = shotlifespan;
		shottimer = shotlifespan;
	}
	if variable_struct_exists(vshotburststats, "Shot_Pierce") {
		shotpierce = vshotburststats.Shot_Pierce
	}
	if variable_struct_exists(vshotburststats, "Shot_Speed") {
		shotspeed = vshotburststats.Shot_Speed
		speed = shotspeed;
	}
	if variable_struct_exists(vshotburststats, "Burst_Speed") {
		shotspeed = vshotburststats.Burst_Speed
		speed = shotspeed;
	}
	if variable_struct_exists(vshotburststats, "Shot_Point_Angle") {
		shotpointangle = vshotburststats.Shot_Point_Angle
	}
	if variable_struct_exists(vshotburststats, "Shot_Impact_Type") {
		shotimpacttype = vshotburststats.Shot_Impact_Type
	}

}