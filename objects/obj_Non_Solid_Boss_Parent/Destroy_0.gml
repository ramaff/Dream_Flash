//with (other) {
global.bosscount -= 1;

//show_debug_message(string(global.bosscount))
//ds_list_destroy(projectile_hits);

global.recollectionBoss[global.bossval - frac(global.bossval)]++;

scr_Soul_Currency_Add();

//}
