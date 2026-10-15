/// @description Insert description here
// You can write your code in this editor


global.bosscount -= 1;

if new_boss == true {
	global.recollectionBoss[boss_value]++;
	
} else {
	global.recollectionBoss[bossValue]++;
	scr_Sound_Effect(sd_Boss_Kill);
}

scr_Dead_Boss(difficulty, 60)




