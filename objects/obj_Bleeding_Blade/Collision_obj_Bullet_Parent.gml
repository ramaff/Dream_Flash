/// @description Insert description here
// You can write your code in this editor

with(other) {
	scr_Soul_Shot_Rebound_Parts();
	var poww = other.shot_stats.Shot_Shield_Power;
	if bulletpower <= poww {
		var xxx = x;
		var yyy = y;
		with (obj_Soul_Parent) {
			scr_Bleeding_Shot(xxx,yyy,shpower);
		}
	}
	scr_Bullet_Dampen(poww)
}
