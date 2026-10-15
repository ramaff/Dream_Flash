global.bosscount -= 1;

global.recollectionBoss[bossValue]++;

if currentphase >= finalphase
if bosshealth <= 0 {
scr_Soul_Spiritual_Add(SPIRIT_TYPE.LOATHING);
}

global.soulloathing += 3;
scr_Stat_Up_Indication(10);
