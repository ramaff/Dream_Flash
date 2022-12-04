/// @description Insert description here
// You can write your code in this editor
alarm[0] = 15;

with(obj_Soul) {
	if (collision_circle(other.x,other.y,160 * other.size, id, false, false)) {
		var hamount = 0.66;
		scr_Heal_Soul(hamount);
		if other.diss = 1 {
			other.size -= 0.03;
		}
	}
}