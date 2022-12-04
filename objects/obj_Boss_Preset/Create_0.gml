boost = global.boost;
champ = global.champ;

if champ = 0 {
    global.bossval = 100.1;
}
if champ = 1 {
    global.bossval = 100.2;
    //sprite_index = spr_Rainy_Cumulus;
}

scr_Boss_Stats_Setup();

alarm[0] = 90 / bossattackspeed;

dir = 0;

image_speed = 0;
image_index = 0;

