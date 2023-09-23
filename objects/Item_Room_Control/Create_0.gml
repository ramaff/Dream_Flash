global.floor[global.currentroom,3] = floor(global.floor[global.currentroom,3] / 128) * 128;

instance_create((room_width / 2) + global.soulSpawnXAdd,(room_height / 2) + global.soulSpawnYAdd, obj_Basic_Soul);

scr_Wall_Form();

global.bosscount = 0;
global.bossval = 0;

global.itemcount = 0;

global.orbit[0] = 0;
global.orbit[1] = 0;
global.orbit[2] = 0;
global.orbit[3] = 0;
global.orbit[999] = -1000;

//json_decode(global.OA5rooms)
//show_debug_message(json_parse(global.OA5rooms))
//show_debug_message(global.OA5rooms[global.currentroom])
//show_debug_message(array_length(global.OA5rooms[global.currentroom]))

if global.OA[5] > 0 and array_length(global.OA5rooms[global.currentroom]) > 0 {
	scr_OA05();
	exit;
}
//show_debug_message("did not exit somehow")
field = global.floor[global.currentroom,0];
for(i = 1; i <= 13; i++) {
    item[i] = global.floor[global.currentroom,6+i];
}

scr_Item_Spawn(field, item[1], item[2], item[3], item[4], item[5], item[6], item[7], item[8], item[9], item[10], item[11], item[12], item[13]);

instance_create(x,y,obj_Environment_Emitter)

//scr_N02();

/*
var roomtype = 1 + irandom(6);

if roomtype = 1 || roomtype = 3 || roomtype = 7 {
    scr_Class_Item_Spawn();
}
if roomtype = 2 || roomtype = 4 {
    scr_Weapon_Item_Spawn();
}
if roomtype = 5 {
    scr_Minion_Item_Spawn();
}
if roomtype = 6 {
    scr_Heart_Item_Spawn();
}

/* */
/*  */
