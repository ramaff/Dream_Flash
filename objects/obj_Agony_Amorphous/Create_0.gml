boost = global.boost;
champ = global.champ;

bossValue = 10;
scr_Boss_Stats_Setup();

if champ = 1 {
    global.bossval = 10.2;
    //sprite_index = spr_Spike_Amorphous;
}
if champ = 2 {
    global.bossval = 10.3;
    //sprite_index = spr_Radioactive_Amorphous;
}
if champ = 3 {
    global.bossval = 10.4;
    //sprite_index = spr_Acid_Slime;
}

//alarm[0] = 90 / bossattackspeed;

scr_Boss_Size_Setup(0.5);

attacking = 0;

//image_speed = 0;
image_index = 0;

