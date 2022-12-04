scr_Boss_Status_Step();

if hspeed > 0 {
    image_index = 0;
} else {
    image_index = 1;
}

scr_Boss_Size_Lerp(0.15);

/*
if bossActiveAttack[1] != 0 {
	sprite_index = spr_Locust_Spawn_Shoot;
} else {
	sprite_index = spr_Locust_Spawn;
}
*/

scr_Boss_Soul_Hitbox(sprite_index);
