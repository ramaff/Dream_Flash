/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if instance_exists(obj_Boss_Parent) {
	if distance_to_object(obj_Boss_Parent) <= shot_stats.Shot_Air_Burst_Stats.Range {
		instance_destroy();
		exit;
	}
}


event_inherited();

