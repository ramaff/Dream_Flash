scr_Boss_Status_Step();

scr_Boss_Size_Lerp_Dir(0.15);

speedper += 1/300;

if speedper >= 1 {
	speedper = 1;	
}

scr_Boss_Soul_Hitbox(sprite_index);
