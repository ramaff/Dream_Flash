boost = 0;
champ = 0;

bossValue = 113;
scr_Boss_Stats_Setup();

image_index = 0;

xmove = room_width / 2;
ymove = room_height / 2;

move_towards_point(xmove,ymove,bossmovespeed);

tier = global.currentchapter - 1;

scr_Boss_Size_Setup(0.5);
if tier >= 2 {
	sprite_index = spr_High_Vanity_Spirit;
}
//bossSize = 1;
alarm[1] = 30;