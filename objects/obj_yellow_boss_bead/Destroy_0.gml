/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !instance_exists(target) {
	with(obj_maze_bead) {
		if target = other.id {
			target = other.tail;
		}
	}
}

if instance_exists(tail) {
	tail.target = target;
}

