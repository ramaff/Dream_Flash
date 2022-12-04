boost = global.boost;
champ = global.champ;

global.bossval = 24.1;

scr_Boss_Stats_Setup();

if champ = 1 {
    global.bossval = 24.2;
    sprite_index = spr_White_Belt_Ninja;
}
if champ = 2 {
    global.bossval = 24.3;
    sprite_index = spr_Black_Belt_Ninja;
}
if champ = 3 {
    global.bossval = 24.4;
    sprite_index = spr_Spooky_Spirit;
}

bossattack = 1;

//alarm[0] = 90 / bossattackspeed;
//alarm[2] = 30;

image_speed = 0;
image_index = 0;

