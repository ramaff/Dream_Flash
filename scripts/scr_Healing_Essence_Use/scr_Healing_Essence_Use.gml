function scr_Healing_Essence_Use(_cw_stats) {
	current_weapon_stats = scr_Setup_Default_Shot_Stats();

	_cw_stats.Shot_Power = 8;

	shealth += (_cw_stats.Shot_Power + spoweradd) * scr_Soul_Power_Factor_Calc(id) * ((60 + global.soulvitality + global.soulvitalityTemp) / 60);

	with instance_create(x,y,obj_Weapon_Effect) {
	    moveUp = 1;
	    sprite_index = spr_Healing_Essence_Art;
	    size = 0.4 + random(0.1);
	    image_xscale = size;
	    image_yscale = size;
	    speed = 0.6 + random(0.4);
	    direction = 0 + random(180);
	    alarm[0] = 40 + random(15);
	}



}
