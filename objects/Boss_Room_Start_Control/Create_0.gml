global.floor[global.currentroom,3] = floor(global.floor[global.currentroom,3] / 128) * 128;

global.roomSizeX = global.floor[global.currentroom,3];
global.roomSizeY = global.floor[global.currentroom,3];

instance_create((room_width / 2) + global.soulSpawnXAdd,(room_height / 2) + global.soulSpawnYAdd, obj_Basic_Soul);

scr_Wall_Form();

fieldSpawn = 0;


//instance_create(0,0, obj_Medium_Room_Wall);

global.bosscount = 0;
global.bossval = 0;

difficulty = global.floor[global.currentroom,24];
boss = global.floor[global.currentroom,21];
champ = global.floor[global.currentroom,22];
boost = global.floor[global.currentroom,23];

scr_Boss_Summon(boss,champ,boost,difficulty,0);

properSize = global.floor[global.currentroom,3];
properBG = global.floor[global.currentroom,4];

instance_create(x,y,obj_Environment_Emitter)

scr_Hazard_Form();

badSpiritSend = 0;

startHope = global.soulhope;
startBliss = global.soulbliss;
startVanity = global.soulvanity;
startLoathing = global.soulloathing;
startParanoia = global.soulparanoia;
startDespair = global.souldespair;

scr_XB06();