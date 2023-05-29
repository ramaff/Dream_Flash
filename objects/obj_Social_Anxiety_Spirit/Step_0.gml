/// @description Insert description here
// You can write your code in this editor

scr_Boss_Height_Bob(30, 2, 0);
scr_Boss_Wobble("Horizontal", 0.3, 2, 0);

souldist = point_distance(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y);

if evil = 0 and good = 0 {
	if souldist < 320 {
		image_alpha = 0.2 + (0.6 * (souldist / 320))
	} else {
		image_alpha = 0.8
	}
} else {
	if souldist < 320 {
		sprite_index = spr_Paranoia_Crowd_Spirit_Eye_Attack;	
		image_speed = 1;
		if image_index >= 3 {
			image_index = 3;	
		}
		image_alpha = 1;
	} else {
		sprite_index = spr_Paranoia_Crowd_Spirit_Eye;	
		image_alpha = 0.8
	}
}

scr_Boss_Size_Lerp_Dir(0.15);