boost = global.boost;
champ = global.champ;

bossValue = 23;
scr_Boss_Stats_Setup();

if champ = 1 {
    global.bossval = 23.2;
}
if champ = 2 {
    global.bossval = 23.3;
    //sprite_index = spr_Heart_Quake;
}

scr_Boss_Size_Setup(0.5);

attacking = 0;
bossScare = 0;

image_index = 0;

scr_Default_Attack_Settings();

minion_count = 2;
minion_type = obj_Scary_Heart;
minion_health = bossmaxhealth / 21;
scr_Minion_Spawn();

bossHeight = 32;
y -= bossHeight;