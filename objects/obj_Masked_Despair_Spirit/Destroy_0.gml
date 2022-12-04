global.bosscount -= 1;

ds_list_destroy(projectile_hits);

global.recollectionBoss[global.bossval - frac(global.bossval)]++;

if currentphase >= finalphase
if bosshealth <= 0 {
scr_Soul_Spiritual_Add("Despair");
}

global.souldespair += 5;
scr_Stat_Up_Indication(12);