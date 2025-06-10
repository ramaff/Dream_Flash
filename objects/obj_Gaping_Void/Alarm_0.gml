/// @description Insert description here
// You can write your code in this editor
alarm[0] = 15;

with(obj_Soul) {
	if (collision_circle(other.x,other.y,160 * other.size, id, false, false)) {
		shealth -= 1;
		scr_Soul_Been_Hit();
	}
}
with(obj_Boss_Parent) {
	if (collision_circle(other.x,other.y,240 * other.size, id, false, false)) {
		var _dmg = (10 + (global.souldespair + global.souldespairTemp) / 2) * global.V[4]
		bosshealth -= _dmg;	
		scr_setup_dmg_indicator(x, y, _dmg, c_white)
	}
}