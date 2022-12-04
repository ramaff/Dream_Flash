// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bullet_Hell_Use_Helper() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 15;
	Shot_Accuracy += 15;
	Shot_Count += 0;

	Shot_Sprite = spr_Bullet_Hell_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Explosive += 1;

	Shot_Speed = 10;
	Shot_Power = 10;
	Shot_Knockback = 10;
	Shot_Lifespan = 90;

	Shot_Size = 0.45;
	
	if Shot_Repetition[bi] = 1 {
		Shot_Default_Count[bi] = 1;
		Shot_Power = 15;
		
		Shot_Burst_Type = 1;
		Shot_Burst_Amount = 6;
		Shot_Burst_Power = 7.5;
		
		Weapon_Split_Visible = 1;
		Weapon_Split_Hit_Again = 1;
		
		Shot_Sprite = spr_Bullet_Hell_Big_Shot;
		Shot_Duplicate_Sprite = spr_Bullet_Hell_Shot;
	} else {
		Shot_Default_Count[bi] = 1;	
		
		Shot_Burst_Type = 0;
		Shot_Burst_Amount = 0;
		Shot_Burst_Power = 0;
		
		Weapon_Split_Visible = 0;
		Weapon_Split_Hit_Again = 0;
		
		Shot_Sprite = spr_Bullet_Hell_Shot;
		Shot_Duplicate_Sprite = spr_Bullet_Hell_Shot;
	}
	
	speed = 3;
	friction = 1;
	direction = point_direction(x,y,mouse_x,mouse_y) - 180;
	
}