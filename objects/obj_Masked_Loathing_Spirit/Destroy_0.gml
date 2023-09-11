global.bosscount -= 1;

global.recollectionBoss[global.bossval - frac(global.bossval)]++;

if currentphase >= finalphase
if bosshealth <= 0 {
scr_Soul_Spiritual_Add("Loathing");
}

global.soulloathing += 3;
scr_Stat_Up_Indication(10);
