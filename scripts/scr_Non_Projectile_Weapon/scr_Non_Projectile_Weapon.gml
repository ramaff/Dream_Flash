// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Non_Projectile_Weapon(_weapon = global.currentweapon){

	if _weapon = 601 || _weapon = 0 {
		return true	
	}
	return false

}