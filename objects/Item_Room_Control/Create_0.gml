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

if scr_Room_Leavable() {
    scr_Room_End();
}

scr_Stat_Field_Chain_Check(); // this causes a memory leak, don't do it every step
// still not sure why either

