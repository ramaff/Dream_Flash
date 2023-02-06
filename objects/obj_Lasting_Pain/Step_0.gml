/// @description Insert description here
// You can write your code in this editor


scr_Boss_Height_Bob(30, 2, 0);
if alarm[0] <= 0 {
	//scr_Boss_Wobble("Horizontal", 3, 0.25, 0);
	
	if alarm[1] <= 15 {
		bossSize -= bossSize / alarm[1];
	} else {
		bossSize += 0.009;
		scr_Boss_Wobble("Vertical", 1.2, 0.2, 0);
	}
} else {
	scr_Boss_Wobble("Horizontal", 0.6, 0.5, 0);
}


followtarget = noone;
if instance_exists(obj_Soul_Parent) {
	followtarget = obj_Soul_Parent;
} else {
	instance_destroy();	
}

var setdist = 30;
var setspeed = 2.25;

var dis = point_distance(x, y, followtarget.perX, followtarget.perY)
if dis > setdist {
	direction = point_direction(x, y, followtarget.perX, followtarget.perY);
	speed = (dis - setdist) / (setdist / setspeed);
} else {
	speed = lerp(speed, 0, 0.3);
}

scr_Boss_Size_Lerp_Dir(0.15);
