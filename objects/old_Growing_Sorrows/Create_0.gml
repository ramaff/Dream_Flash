boost = global.boost;
champ = global.champ;

global.bossval = 3.10;

//champ = 0;

if champ = 1 {
    global.bossval = 3.2;
    //sprite_index = spr_Toxic_Sorrow;
}
if champ = 2 {
    global.bossval = 3.3;
    //sprite_index = spr_Shocking_Sorrow;
}
if champ = 3 {
    global.bossval = 3.4;
    //sprite_index = spr_Feel_Sorrow;
}
if champ = 8 {
    global.bossval = 3.8;
    //sprite_index = spr_Sonic_Sorrow;
}

scr_Boss_Size_Setup(0.5);

tearCycle = 0;

scr_Boss_Stats_Setup();

scr_Wall_Sweep_Path_Setup();

bossActiveAttackCooldown[1] = 80 / bossattackspeed;

bossHeight = 36;
y -= bossHeight;