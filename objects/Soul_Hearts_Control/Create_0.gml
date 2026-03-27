//heart #
for(var _i = 0; _i < 3; _i++) {
	/*var _butt = noone;
	with instance_create_depth(32 + (_i * 64), 64, 20, obj_Heart_Butt) {
		slot = _i
		_butt = id;
	} */
	heart[_i] = {
		"heart_id": 1,
		"health": 20,
		"max_health": 20,
		"health_decay": 0,
		"survival_hits": 0,
		"max_survival_hits": 0
	}
}

global.currentheart = 2;
global.currenthearttype = 1;

heart_slot_info = []
heart_script = noone;

current_heart_stats = {}

alarm[0] = 30;

