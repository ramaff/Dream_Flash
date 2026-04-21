/// @description Insert description here
// You can write your code in this editor

var heartReload = 15;

if global.currentheart < 0 {
	global.currentheart = 0;	
}

var cHeart = global.currenthearttype

if cHeart = 51 {
	heartReload = 45;
	scr_H51();
}

scr_OC02(cHeart);

if cHeart = 53 {
	heartReload = 15;
	scr_H53();
}
if cHeart = 7 {
	var _soul_speed = sqrt((soulCurrentHorizontalSpeed * soulCurrentHorizontalSpeed) + (soulCurrentVerticalSpeed * soulCurrentVerticalSpeed));
	if _soul_speed > 0 {
		heartReload = 300 / (3 + _soul_speed);
		scr_H07();
	}
}

if cHeart = 8 {
	scr_H08_Status_Build_Up()
	heartReload = 1;
}

if cHeart = 9 {
	with instance_create_depth(x + 50, y, depth + 1, obj_Bleeding_Heart_Blade) {
		target = other.id;
		alarm[0] = 90;
		image_angle = -90;
		
		image_xscale = 0.5;
		image_yscale = 0.5;
	}
	heartReload = 99999999;
}

if cHeart = 10 {
	var _current_weapon_stats = scr_Setup_Default_Shot_Stats();
	
	_current_weapon_stats.Shot_Sprite = "spr_Pure_Magic_Shot"
	_current_weapon_stats.Shot_Type = "obj_Lesser_Soul_Shot"
	_current_weapon_stats.Shot_Count = 3;
	_current_weapon_stats.Shot_Orbital_Type = 2;
	_current_weapon_stats.Shot_Orbital_Range = 165;
	_current_weapon_stats.Shot_Life_Span = 99999999;
	_current_weapon_stats.Shot_Speed = 2;
	_current_weapon_stats.Shot_Power = 10;
	_current_weapon_stats.Shot_Pierce = 999999;
	_current_weapon_stats.Shot_Extra_Hits_Frequency = 30;

	var barrage = false;
	var minion = false;
	var spawnProjectile = true;
		
	var _weapon_meta_data = scr_Hard_Coded_Weapon_Stats(_current_weapon_stats);
		
	scr_Weapon_Output(_weapon_meta_data.spawnProjectile, _weapon_meta_data.minion, _current_weapon_stats, false)	
	heartReload = 99999999;
}

if cHeart = 17 {
	scr_H17_Bubble();	
}


alarm[2] = heartReload;