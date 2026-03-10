//heart #
for(var _i = 0; _i < 3; _i++) {
	heart[_i] = {
		"slot": _i,
		"heart_id": 0,
		"health": 20,
		"max_health": 20,
		"health_decay": 0,
	}
}
heart[0].heart_id = 1;
heart[1].heart_id = 1;
heart[2].heart_id = 1;

global.currentheart = 2;
global.currenthearttype = 1;

heart_slot_info = []
heart_script = noone;

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