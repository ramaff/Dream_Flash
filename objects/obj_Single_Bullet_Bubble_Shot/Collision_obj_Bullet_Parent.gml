/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !instance_exists(captured_bullet) {
	if other.bulletpower < shot_stats.Shot_Power * 2 {
		captured_bullet = other.id	
	}
}

