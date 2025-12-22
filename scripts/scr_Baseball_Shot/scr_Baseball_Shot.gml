// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Baseball_Shot(xxx,yyy, pow) {

	current_weapon_stats = scr_Setup_Default_Shot_Stats();

	Shot_XX = xxx - x;
	Shot_YY = yyy - y;

	current_weapon_stats = {
		Shot_Spread: 0,
		Shot_Accuracy: 5,
		Shot_Count: 1,
		Shot_Mouse: 0,
		Shot_Direction: point_direction(xxx,yyy, obj_Astral_Indicator.x, obj_Astral_Indicator.y),
		Shot_Sprite: "spr_Baseball",
		Shot_Type: "obj_Lesser_Soul_Shot",
		Shot_Size: 0.1 + other.image_xscale,
		Shot_Forward: 0,
		//Shot_Form_Show: 0,
		Shot_Speed: (8 + other.speed) * (pow / 100),
		Shot_Power: (5 + other.bulletpower / 3) * (pow / 100),
		Shot_Knock_Back: 10,
		Shot_Life_Span: 30,
		Shot_Trail: 1,
		Shot_Trail_Sprite: "spr_Big_Essence_Trail_Bit",
		Shot_Trail_Area: 15,
		Shot_Trail_Life: 20,
		Shot_Trail_Fade: 0,
		Shot_Trail_Color_1: [255,246,0],
		Shot_Trail_Color_2: [255,119,0],
		Shot_Trail_Hit_Count: 13,
		Shot_Trail_Hit_Life: 10,
		Shot_Fire: 3,
		Shot_Fire_Time: 30,
		Shot_Fire_Ticks: 3
	};

	if current_weapon_stats.Shot_Speed < 0 {
		current_weapon_stats.Shot_Speed = 0;	
	}
	if current_weapon_stats.Shot_Power < 0 {
		current_weapon_stats.Shot_Power = 0;	
	}

	current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
	scr_Shot_Creation();

}