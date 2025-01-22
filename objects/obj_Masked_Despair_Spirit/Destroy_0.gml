global.bosscount -= 1;

global.recollectionBoss[bossValue]++;

if currentphase >= finalphase
if bosshealth <= 0 {
scr_Soul_Spiritual_Add("Despair");
}

global.souldespair += 3;
scr_Stat_Up_Indication(12);