// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_A07_Boss_Damage(){
	if shot_stats.Shot_Origin = obj_Soul_Parent and global.A[7] > 0 {
		shotDamage = shotDamage * (1 + global.A07memory);
	}
}