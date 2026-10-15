
global.bosscount -= 1;

//ds_list_destroy(projectile_hits);

if new_boss == true {
	global.recollectionBoss[boss_value]++;
	
} else {
	global.recollectionBoss[bossValue]++;
	scr_Sound_Effect(sd_Boss_Kill);
}

scr_Dead_Boss()