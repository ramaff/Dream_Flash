// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: Soul Parent Alarm 6

function scr_XB04(){
	if global.XB4Dir < 0 {
		global.XB4Dir = 30;	
	} else {
		global.XB4Dir = -30;	
	}
	with (obj_Basic_Projectile_Parent) {
		direction += global.XB4Dir;
	}
	with (obj_Bullet_Parent) {
		direction += global.XB4Dir;
	}
}