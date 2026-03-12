//heart #
for(var _i = 0; _i < 3; _i++) {
	/*var _butt = noone;
	with instance_create_depth(32 + (_i * 64), 64, 20, obj_Heart_Butt) {
		slot = _i
		_butt = id;
	} */
	heart[_i] = {
		"slot": _i,
		"heart_id": 0,
		"health": 20,
		"max_health": 20,
		"health_decay": 0,
		"survival_hits": 0//,
		//"butt": _butt
	}
}
heart[0].heart_id = 1;
heart[1].heart_id = 4;
heart[2].heart_id = 1;

global.currentheart = 2;
global.currenthearttype = 1;

heart_slot_info = []
heart_script = noone;

current_heart_stats = {}

alarm[0] = 30;

/*
for(i = 0; i < 16; i++) {
    global.hinv[i] = 0;
    heartbutt[i] = instance_create(0,0,obj_Heart_Butt);
    heartbutt[i].slot = i;
}

global.mouseheartslot = 0;
global.mousehearttype = 0;
instance_create(0,0,obj_Mouse_Heart);
*/