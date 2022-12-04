boost = global.boost;
champ = global.champ;

global.bossval = 14.1;

scr_Boss_Stats_Setup();

if champ = 1 {
    global.bossval = 14.2;
    //sprite_index = spr_Ecto_Spirit;
}
if champ = 2 {
    global.bossval = 14.3;
    //sprite_index = spr_Distorted_Spirit;
}
if champ = 8 {
    global.bossval = 14.4;
    //sprite_index = spr_Terrifying_Spirit;
}

scr_Boss_Size_Setup(0.5);

//image_speed = 0;
image_index = 0;

if boost = 1 {
	image_speed = bossattackspeed;	
}

trailindex = 0;

bossHeight = 60;
bossDashHeightVelocity = -1;
