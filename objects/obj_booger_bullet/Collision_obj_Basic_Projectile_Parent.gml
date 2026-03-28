/// @description Insert description here
// You can write your code in this editor

if !variable_struct_exists(skip_projectiles, other.id) {
	variable_struct_set(skip_projectiles, other.id, other.id);
	var _sticked_projectile = {
		"id": other.id,
		"xx": 1.25 * (other.x - x),
		"yy": 1.25 * (other.y - y)
	}
	array_push(sticked_projectiles, _sticked_projectile)
}
