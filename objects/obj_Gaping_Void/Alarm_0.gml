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
		bosshealth -= (10 + (global.souldespair + global.souldespairTemp) / 2) * global.V[4];	
		with instance_create(x,y,obj_Damage_Indicator) {
	        element = 0;
	        damageIndication = (10 + (global.souldespair + global.souldespairTemp) / 2) * global.V[4];
	        textSize = 1;
	        direction = 90;
	        speed = 1 + (other.speed / 6) + random(0.05)
	        friction = 0.01 + (other.speed / 600)
	        alarm[0] = 30 + irandom(3);
		}
	}
}