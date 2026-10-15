global.bosscount -= 1;

global.recollectionBoss[bossValue]++;

if currentphase >= finalphase
if bosshealth <= 0 {
	scr_Soul_Spiritual_Add(SPIRIT_TYPE.VANITY);
	global.soulassurance += 5;
	scr_Stat_Up_Indication(9);
}