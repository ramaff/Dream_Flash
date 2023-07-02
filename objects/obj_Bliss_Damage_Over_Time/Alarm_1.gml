/// @description Insert description here
// You can write your code in this editor

alarm[1] = 15;

var damage = (damage_over_time / time) * 15

target.shealth -= damage;
damage_threshold += damage

if damage_threshold >= 1 {
	with instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_Damage_Indicator) {
		element = 1;
		damageIndication = 1
		textSize = 2;
		direction = 90;
		speed = 1.5 + random(0.35)
		friction = 0.01 + (other.speed / 600)
		alarm[0] = 60 + irandom(6);
	}
	damage_threshold -= 1
}