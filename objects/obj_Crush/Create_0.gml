boost = global.boost;
champ = global.champ;

bossValue = 38;
scr_Boss_Stats_Setup();

if champ = 1 {
    global.bossval = 38.2;
}
if champ = 2 {
    global.bossval = 38.3;
    //sprite_index = spr_Heart_Quake;
}

scr_Boss_Size_Setup(0.5);

attacking = 0;
bossScare = 0;

image_index = 0;

scr_Default_Attack_Settings();

bossHeight = 0;
y -= bossHeight;