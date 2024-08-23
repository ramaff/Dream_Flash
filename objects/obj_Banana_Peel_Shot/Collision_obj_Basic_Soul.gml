/// @description Insert description here
// You can write your code in this editor
scr_Soul_Shot_Soul_Hit();

var _slip_target = other
if _slip_target.soulCurrentHorizontalSpeed != 0 || _slip_target.soulCurrentHorizontalSpeed != 0 {
	
	with instance_create(x, y, obj_Force_Push) {
		target = _slip_target
		alarm[0] = 60 + irandom(30);

		force = 4 + irandom(1);
		force_friction = force / alarm[0];
		force_direction = _slip_target.soulCurrentDirection - 60 + random(120);
	}

	instance_destroy()

}



