/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

var _eat = false;

if active_attack = 1 and active_attack_delay <= 0 {
	if pattern_direction = 0 and other.x < (x - 0) {
		_eat = true	
	}
	if pattern_direction = 180 and other.x > (x + 0) {
		_eat = true	
	}
}

if _eat {
	bosshealth += other.shot_stats.Shot_Power;
	scr_setup_dmg_indicator(x, y, other.shot_stats.Shot_Power, c_fuchsia, 0)
	instance_destroy(other);
} else {
	event_inherited();
}
