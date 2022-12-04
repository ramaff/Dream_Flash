global.currentroom = 0;
global.currentchapter += 1;

global.chaptertime = 0;
global.glasstime = 0;

scr_K03_To_K08();

with (obj_Soul_Flash) {
	global.soulflash++;
	instance_destroy();
}
with (obj_Soul_Feel) {
	global.soulflash++;
	instance_destroy();
}
with (obj_Soul_Dream) {
	global.soulflash++;
	instance_destroy();
}
with (obj_Soul_Nightmare) {
	global.soulflash++;
	instance_destroy();
}

for(i = 1; i <= 999; i++) {
    global.recollectionFloorWeap[i] = 0;
}

for (i = 0; i < 5; i++) {
    if (Soul_Weapons_Control.weapon[i,2] > 0) {
        global.recollectionFloorWeap[Soul_Weapons_Control.weapon[i,2]] = 1;
    }
}

instance_destroy(Floor_Layout_Control)
instance_destroy(Gui_Control)
with instance_create(x,y,Floor_Layout_Control) {
    Flash[0,3] = 1024;
    if global.currentchapter = 1 {
        Flash[0,4] = bg_Flash_Tiles;
    }
    if global.currentchapter = 2 {
        Flash[0,4] = bg_Feel_Tiles;
    }
    if global.currentchapter = 3 {
        Flash[0,4] = bg_Dream_Tiles;
    }
	if global.currentchapter = 4 {
        Flash[0,4] = bg_Nightmare_Tiles;
    }
}

global.soulSpawnXAdd = 0;
global.soulSpawnYAdd = 0;

scr_Soul_Stat_Store();

room_goto(Medium_Room);

global.bosscount -= 1;

instance_create(x,y,Gui_Control)

alarm[1] = 90;

