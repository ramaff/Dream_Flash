// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_force_push(_target = id, _time = 15, _force = 4, _force_friction = 0.33, _force_direction = 0, _force_angular_velocity = 0) {
	with instance_create(x, y, obj_Force_Push) {
		target = _target
		alarm[0] = _time

		force = _force
		force_friction = _force_friction
		force_direction = _force_direction
		force_angular_velocity = _force_angular_velocity
	}
}