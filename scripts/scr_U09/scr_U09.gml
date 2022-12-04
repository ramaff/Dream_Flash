// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// Extra Shot Stats


function scr_U09(){
	if global.U[9] > 0 {
		if shotfreezetype <= 1 {
            shotfreezetype += 0.1 * global.U[9];
        }
        if shotfreeze < 2 {
            shotfreeze = 2;
        }
        if shotfreezetime < 60 {
            shotfreezetime = 60;
        }
	}
}