boost = global.boost;
champ = global.champ;

bossValue = 31;
scr_Boss_Stats_Setup();

//alarm[0] = 90 / bossattackspeed;

//image_speed = 0;
image_index = 0;

scr_Boss_Size_Setup(0.5);

/*
if bossNum = 1 {

    if global.soulSpawnXAdd > 0 and global.soulSpawnYAdd > 0 {
        path_position = 0;
    }
    if global.soulSpawnXAdd < 0 and global.soulSpawnYAdd > 0 {
        path_position = 0.75;
    }
    if global.soulSpawnXAdd > 0 and global.soulSpawnYAdd < 0 {
        path_position = 0.25;
    }
    if global.soulSpawnXAdd < 0 and global.soulSpawnYAdd < 0 {
        path_position = 0.5;
    }
    if global.boost = 2 {
        path_position += 0.25
    }

}

if bossNum = 2 {

    if global.soulSpawnXAdd > 0 and global.soulSpawnYAdd > 0 {
        path_position = 0.75;
    }
    if global.soulSpawnXAdd < 0 and global.soulSpawnYAdd > 0 {
        path_position = 0.5;
    }
    if global.soulSpawnXAdd > 0 and global.soulSpawnYAdd < 0 {
        path_position = 0;
    }
    if global.soulSpawnXAdd < 0 and global.soulSpawnYAdd < 0 {
        path_position = 0.25;
    }

}
*/

scr_Wall_Boss_Path_Setup();

path_speed = path_speed / 2;

/* */
/*  */
