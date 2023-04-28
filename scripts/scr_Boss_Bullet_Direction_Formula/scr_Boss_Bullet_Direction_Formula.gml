// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Bullet_Direction_Formula(bull_dir = scr_Soul_Point(), variance = 30){
	return bull_dir + ((-(variance / 2) + random(variance)) / bossaccuracy);
}