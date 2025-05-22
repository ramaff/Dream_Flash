global.floor[global.currentroom,3] = floor(global.floor[global.currentroom,3] / 128) * 128;

global.roomSizeX = global.floor[global.currentroom,3];
global.roomSizeY = global.floor[global.currentroom,3];

global.itemcount = 0;

global.orbit[0] = 0;
global.orbit[1] = 0;
global.orbit[2] = 0;
global.orbit[3] = 0;
global.orbit[999] = -1000;


instance_create((room_width / 2) + global.soulSpawnXAdd,(room_height / 2) + global.soulSpawnYAdd, obj_Basic_Soul);

scr_Wall_Form();

instance_create(x,y,obj_Environment_Emitter)

scr_Hazard_Form();

scr_T04();

scr_Stat_Field_Chain_Check(); // this causes a memory leak, don't do it every step
// still not sure why either

if scr_Room_Leavable() {
    scr_Room_End();
}
