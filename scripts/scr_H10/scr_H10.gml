// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_H10(){
	var _current_weapon_stats = scr_Setup_Default_Shot_Stats();
	
	_current_weapon_stats.Shot_Sprite = "spr_Pure_Magic_Shot"
	_current_weapon_stats.Shot_Type = "obj_Lesser_Soul_Shot"
	_current_weapon_stats.Shot_Count = ceil(3 * global.soulheartboost);
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
}