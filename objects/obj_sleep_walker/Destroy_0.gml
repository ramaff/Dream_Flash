/// @description Insert description here
// You can write your code in this editor

global.bosscount -= 1;

//ds_list_destroy(projectile_hits);

if new_boss == true {
	global.recollectionBoss[boss_value]++;
	//var _recalls = scr_Calculate_Currency_Add(true)
	
} else {
	global.recollectionBoss[bossValue]++;
	
	//scr_Calculate_Currency_Add();

	scr_Sound_Effect(sd_Boss_Kill);
}

scr_Dead_Boss(difficulty, 60)
