global.floor[global.currentroom,3] = floor(global.floor[global.currentroom,3] / 128) * 128;

global.roomSizeX = global.floor[global.currentroom,3];
global.roomSizeY = global.floor[global.currentroom,3];

instance_create_depth((room_width / 2) + global.soulSpawnXAdd,(room_height / 2) + global.soulSpawnYAdd,-1, obj_Basic_Soul);

scr_Wall_Form();

fieldSpawn = 0;

global.orbit[0] = 0;
global.orbit[1] = 0;
global.orbit[2] = 0;
global.orbit[3] = 0;
global.orbit[999] = -1000;

global.bosscount = 0;
global.bossval = 0;

difficulty = global.floor[global.currentroom,24];
boss = global.floor[global.currentroom,21];
champ = global.floor[global.currentroom,22];
boost = global.floor[global.currentroom,23];

scr_Boss_Summon(boss,champ,boost,difficulty);

properSize = global.floor[global.currentroom,3];
properBG = global.floor[global.currentroom,4];

badSpiritSend = 0;

startHope = global.soulhope;
startBliss = global.soulbliss;
startVanity = global.soulassurance;
startLoathing = global.soulloathing;
startParanoia = global.soulparanoia;
startDespair = global.souldespair;

scr_XB06();