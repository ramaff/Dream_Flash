boost = global.boost;
champ = global.champ;

bossValue = 36;
scr_Boss_Stats_Setup();

if champ = 1 {
    global.bossval = 36.2;
    //sprite_index = spr_Asteroid_Belt_Invader;
}
if champ = 2 {
    global.bossval = 36.3;
    //sprite_index = spr_Laser_Invader;
}

scr_Boss_Size_Setup(0.5);

attacking = 0;
bossScare = 0;

//image_speed = 0;
image_index = 0;

bossHeight = 60;
y -= bossHeight;

scr_Default_Attack_Settings();

