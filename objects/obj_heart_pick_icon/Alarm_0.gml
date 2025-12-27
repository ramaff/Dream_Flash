/// @description Insert description here
// You can write your code in this editor

var _xx = x - soul_source.x;
var _yy = y - soul_source.y;

with(soul_source) {
	
	scr_Heart_Reactions();

	shealth -= 2;
	soulinvincibility += 30;
	
	scr_setup_dmg_indicator(x,y, 2, c_red)
	var _boss_dir = point_direction(x + _xx, y + _yy, obj_Astral_Indicator.x, obj_Astral_Indicator.y)
	if instance_exists(obj_Boss_Parent) {
		var _boss_tar = instance_nearest(x, y, obj_Boss_Parent)
		_boss_dir = point_direction(x + _xx, y + _yy, _boss_tar.x, _boss_tar.y)
	}
	
	repeat(5) {

		var _current_weapon_stats = {
			Shot_Spread: 0,
			Shot_Accuracy: 120,
			Shot_Count: 1,
			Shot_Sprite: "spr_Blood_Shot",
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Speed: 3 + random(1.5),
			Shot_Power: 10 * global.soulheartboost,
			Shot_Mouse: 0,
			Shot_Direction: _boss_dir,
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
			Shot_XX: _xx,
			Shot_YY: _yy,
			Shot_Trail_Sprite: "spr_Soul_Big_Bit",
			Shot_Trail_Area: 15,
			Shot_Trail_Life: 25,
			Shot_Trail_Color_1: [255, 0, 0],
			Shot_Trail_Color_2: [255, 0, 0]
		};
	
		_current_weapon_stats = scr_Setup_Weapon_Stats(_current_weapon_stats);

		scr_Shot_Creation(_current_weapon_stats);
	}

}


