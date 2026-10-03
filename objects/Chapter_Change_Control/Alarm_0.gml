if !instance_exists(obj_Soul_Parent) {
	exit;	
}
if global.currentheart <= 0 {
	exit;	
}

global.currentroom = 0;
global.currentchapter += 1;

global.chaptertime = 0;
global.glasstime = 0;

scr_K03_To_K08();

scr_Collect_Income()

for(var i = 1; i <= 999; i++) {
    global.recollectionFloorWeap[i] = 0;
}

for (var i = 0; i < 5; i++) {
    if (Soul_Weapons_Control.weapon[i].weapon_id > 0) {
        global.recollectionFloorWeap[Soul_Weapons_Control.weapon[i].weapon_id] = 1;
    }
}

instance_destroy(Floor_Layout_Control)
instance_destroy(Gui_Control)
with instance_create(x,y,Floor_Layout_Control) {
    global.floor[0,3] = 1024;
    if global.currentchapter = 1 {
        global.floor[0,4] = spr_flash_base_g;
    }
    if global.currentchapter = 2 {
        global.floor[0,4] = spr_feel_base_g;
    }
    if global.currentchapter = 3 {
        global.floor[0,4] = spr_dream_base_g;
    }
	if global.currentchapter = 4 {
        global.floor[0,4] = spr_nightmare_base_g;
    }
}

global.soulSpawnXAdd = 0;
global.soulSpawnYAdd = 0;

scr_Soul_Stat_Store();

room_goto(Medium_Room);

global.bosscount -= 1;

instance_create(x,y,Gui_Control)

alarm[1] = 90;

