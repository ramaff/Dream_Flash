global.floor[global.currentroom,3] = floor(global.floor[global.currentroom,3] / 128) * 128;

global.roomSizeX = global.floor[global.currentroom,3];
global.roomSizeY = global.floor[global.currentroom,3];

instance_create((room_width / 2) + global.soulSpawnXAdd,(room_height / 2) + global.soulSpawnYAdd, obj_Basic_Soul);

scr_Wall_Form();

instance_create(x,y,obj_Environment_Emitter)

scr_Hazard_Form();
