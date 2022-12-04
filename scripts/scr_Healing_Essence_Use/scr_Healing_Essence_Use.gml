function scr_Healing_Essence_Use() {
	scr_Default_Weapon_Stats();

	Shot_Power = 8;

	shealth += (Shot_Power + spoweradd) * ((10 + spowerfactor + sattackfactorbuffamount) / 10) * spower / 10 * ((60 + global.soulvitality + global.soulvitalityTemp) / 60) / 10;

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
