// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Soul Item Step

function scr_XC02(){
	if global.XC[2] > 0 {
		scr_Enemy_Bullet_Suck(0.5 + (1 * global.XC[2]));
	}
}