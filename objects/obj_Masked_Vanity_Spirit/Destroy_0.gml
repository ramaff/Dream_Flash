global.bosscount -= 1;

global.recollectionBoss[bossValue]++;

if currentphase >= finalphase
if bosshealth <= 0 {
	scr_Soul_Spiritual_Add("Vanity");
	global.soulvanity += 5;
	scr_Stat_Up_Indication(9);
}