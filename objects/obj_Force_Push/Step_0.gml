/// @description Insert description here
// You can write your code in this editor

if instance_exists(target) {
	target.x += lengthdir_x(force, force_direction)	
	target.y += lengthdir_y(force, force_direction)	
}
force -= force_friction
force_direction += force_angular_velocity;



