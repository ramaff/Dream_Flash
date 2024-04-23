// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_H17_Bubble(){
	scr_Default_Weapon_Stats();
		var pow = 5 * global.soulheartboost
		
		current_weapon_stats = {
			Shot_Spread: 0,
			Shot_Accuracy: 360,
			Shot_Count: 1,
			Shot_Sprite: "spr_Magic_Bubble_Shot",
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Speed: 2.5,
			Shot_Power: pow,
			Shot_Knock_Back: 0,
			Shot_Life_Span: 180,
			Shot_Pierce: 2,
			Shot_Point_Angle: 1,
			Shot_Size: 0.4,
			Weapon_Vomit: 1,
			Weapon_Vomit_Min_Speed: 0.7,
			Weapon_Vomit_Max_Speed: 1.4,
			Weapon_Vomit_Min_Life: 0.5,
			Weapon_Vomit_Max_Life: 1,
			Shot_Friction: 0.02,
			Shot_Min_Speed: 0.33,
			Shot_Homing_Type: 1,
			Shot_Homing_Range: 120,
			Shot_Shield_Type: 1,
			Shot_Shield_Power: pow * 1.5
		};

		
		current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation();
		
		/*
    
	Shot_Spread += 0;
	Shot_Accuracy += 360;
	Shot_Count += 0;

	Shot_Sprite = spr_Magic_Bubble_Shot;
	Shot_Type = obj_Lesser_Soul_Shot;

	Shot_Imaginary -= 1;
	Shot_Magical += 1;

	Shot_Size = 0.325 + random(0.125);

	Weapon_Vomit = 1;
	Weapon_Vomit_Min_Speed = 0.7;
	Weapon_Vomit_Max_Speed = 1.4;
	Weapon_Vomit_Min_Life = 0.5;
	Weapon_Vomit_Max_Life = 1;

	Shot_Friction = 0.02;
	Shot_Min_Speed = 0.33;

	Shot_Homing_Type = 1;
	Shot_Homing_Range = 120;

	Shot_Speed = 2;
	Shot_Power = 5 * global.soulheartboost;
	Shot_Knock_Back = 0;
	Shot_Life_Span = 180;

	Shot_Shield_Type = 1;
	Shot_Shield_Power = 9;
    
	Shot_Direction = random(360);
	//Shot_Mouse = 0;
	
	scr_Shot_Creation();
	*/
}