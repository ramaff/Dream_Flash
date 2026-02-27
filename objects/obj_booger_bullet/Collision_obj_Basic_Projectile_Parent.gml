/// @description Insert description here
// You can write your code in this editor

if !variable_struct_exists(skip_projectiles, other.id) {
	variable_struct_set(skip_projectiles, other.id, other.id);
	array_push(sticked_projectiles, other.id)
}
