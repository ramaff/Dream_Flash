/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !variable_struct_exists(skip_bullets, other.id) {
	variable_struct_set(skip_bullets, other.id, other.id);
	if other.bulletpower < shot_stats.Shot_Power * 2 {
		array_push(captured_bullets, other.id)
	}
}
