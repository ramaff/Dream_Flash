scr_Boss_Status_Step();

scr_Boss_Two_Face_Direction();

scr_Boss_Soul_Hitbox(sprite_index);

if image_index >= 3 and image_index <= 5 {
	speed = 4 * bossmovespeed;
} else {
	speed = 1 * bossmovespeed;	
	direction = scr_Soul_Point() - 22.5 + random(45);
}