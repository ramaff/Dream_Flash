randomize();

global.roomSizeX = 1024;
global.roomSizeY = 1024;

scr_Wall_Form();

global.bosscount = 0;
global.bossval = 0;

global.currentchapter = 1;
global.currentroom = 0;
global.goodSpirits = 0;
global.badSpirits = 0;

global.soulSpawnXAdd = 0;
global.soulSpawnYAdd = 0;

global.roomdarkness = 0;
global.soulshine = 10;
global.cloudalpha = 0;
global.recoalpha = 0;

global.strFieldSpawn = 8;
global.vitFieldSpawn = 8;
global.essFieldSpawn = 8;
global.dexFieldSpawn = 8;
global.perFieldSpawn = 8;
global.staFieldSpawn = 8;

global.hopFieldSpawn = 10;
global.blsFieldSpawn = 10;
global.assFieldSpawn = 10;
global.loaFieldSpawn = 10;
global.parFieldSpawn = 10;
global.desFieldSpawn = 10;

global.totalFieldSpawn = 0;

global.emoteFieldSpawn = 3;

global.NewArt = 1;

global.doneLoading = 1;
global.doneTransitioning = 1;

global.stateTutorial = 0;
global.spiritTutorial = 0;

if global.loadrun = 1 {
	global.doneLoading = 0;	
}

scr_Item_Pools();

pal_swap_init_system(shd_pal_swapper,shd_pal_html_sprite,shd_pal_html_surface);

instance_create(x,y, Soul_Stat_Control);
instance_create(x,y, Soul_Hearts_Control);
instance_create(x,y, Soul_Weapons_Control);
instance_create(x,y, Master_Depth_Draw_Control);
instance_create(x,y, Pause_Control);
instance_create(x,y, Floor_Layout_Control);
//instance_create(x,y, Camera_Control);
//instance_create(x,y, Music_Control);
instance_create(x,y, obj_Light_Control);
instance_create(x,y, obj_Particle_Control);
instance_create(x,y, obj_Bloom_Control);

//instance_create(x,y,obj_Dream_Light_Setup);

if global.gameTutorial < 5 {
    instance_create(room_width / 2,room_height / 2, Tutorial_Control);
}

alarm[0] = 2;

instance_create(room_width / 2,room_height / 2, obj_Basic_Soul);

scr_Game_Control_Setup();
scr_Room_Change_Variables();