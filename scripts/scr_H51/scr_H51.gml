// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_H51(){
	//current_weapon_stats = scr_Setup_Default_Shot_Stats();
		
	var _current_weapon_stats = {
		Shot_Spread: 0,
		Shot_Accuracy: 30,
		Shot_Count: 1,
		Shot_Sprite: "spr_Coping_Shot",
		Shot_Type: "obj_Lesser_Soul_Shot",
		Shot_Speed: 3,
		Shot_Power: 12 * global.soulheartboost,
		Shot_Mouse: 0,
		Shot_Direction: 0,
		Shot_Knock_Back: 10,
		Shot_Life_Span: 60,
		Shot_Lobbing: true,
		Shot_Lobbing_Tilt: 10,
        Shot_Height: 30,
        Shot_Fall_Speed: -5,
        Shot_Gravity: 0.18,
		Shot_Point_Angle: 1,
		Shot_Size: 0.5,
		Shot_Pierce: 1,
		Shot_Trail: 1,
		Shot_Trail_Sprite: "spr_Soul_Big_Bit",
		Shot_Trail_Area: 15,
		Shot_Trail_Life: 25,
		Shot_Trail_Color_1: [149,50,255],
		Shot_Trail_Color_2: [133,76,255]
	};
	
	_current_weapon_stats = scr_Setup_Weapon_Stats(_current_weapon_stats);

	scr_Shot_Creation(_current_weapon_stats);
		
	_current_weapon_stats.Shot_Direction = 180;
	_current_weapon_stats.Shot_Lobbing_Tilt = -10;
	_current_weapon_stats = scr_Setup_Weapon_Stats(_current_weapon_stats);
	scr_Shot_Creation(_current_weapon_stats);

}