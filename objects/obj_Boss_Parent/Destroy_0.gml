
global.bosscount -= 1;

//ds_list_destroy(projectile_hits);

global.recollectionBoss[boss_value]++;

scr_Soul_Currency_Add();

scr_Sound_Effect(sd_Boss_Kill);