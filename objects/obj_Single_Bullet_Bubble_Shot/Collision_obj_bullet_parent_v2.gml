/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !instance_exists(captured_bullet) {
	if other.bullet_stats.bullet_power < shot_stats.Shot_Power * 2 {
		captured_bullet = other.id	
	}
}

