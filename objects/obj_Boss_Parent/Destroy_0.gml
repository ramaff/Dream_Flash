
global.bosscount -= 1;

//ds_list_destroy(projectile_hits);

if new_boss == true {
	global.recollectionBoss[boss_value]++;
	//var _recalls = scr_Soul_Currency_Add(true)
	
} else {
	global.recollectionBoss[bossValue]++;
	
	scr_Soul_Currency_Add();

	scr_Sound_Effect(sd_Boss_Kill);
}

with instance_create(x,y, obj_Dead_Boss) {
	difficulty = other.difficulty
	image_xscale = other.bossSize;
	image_yscale = other.bossSize;
	sprite_index = other.sprite_index;
	image_index = other.image_index;
	
	if other.death_sprite != noone {
		sprite_index = other.death_sprite	
	}
	alarm[0] = 30;
	speed = 15;
	direction = other.deadknockdirection;
		
}