// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_H53(){
		
		var _current_weapon_stats = {}
		
		_current_weapon_stats.Shot_Speed = 0;
		_current_weapon_stats.Shot_Forward = 0;
		_current_weapon_stats.Shot_Life_Span = 105 + random(30);
		_current_weapon_stats.Shot_Power = 3;
		_current_weapon_stats.Shot_Size = 0.35 + random(0.1);
		_current_weapon_stats.Shot_Sprite = "spr_Seething_Fire_Shot";
		_current_weapon_stats.Shot_Pierce = 4;
		_current_weapon_stats.Shot_Forward = 0;
		_current_weapon_stats.Weapon_Split_Hit_Again = 1;
		
		_current_weapon_stats.Shot_XX = -20 + random(40);
		_current_weapon_stats.Shot_YY = -10 + random(40);
		
		_current_weapon_stats.Shot_Trail = 1
		_current_weapon_stats.Shot_Trail_Type = "obj_Fire_Part"
        _current_weapon_stats.Shot_Trail_Sprite = "spr_Big_Essence_Trail_Bit"
        _current_weapon_stats.Shot_Trail_Life = 15
        _current_weapon_stats.Shot_Trail_Area = 30
		_current_weapon_stats.Shot_Trail_Frequency = 5;
        _current_weapon_stats.Shot_Trail_Fade = 0
		_current_weapon_stats.Shot_Trail_Direction = 45 + random(90);
		_current_weapon_stats.Shot_Trail_Speed = 1 + random(3);
        _current_weapon_stats.Shot_Trail_Color_1 = [255,42,0]
        _current_weapon_stats.Shot_Trail_Color_2 = [255,42,0]
		
		_current_weapon_stats.Shot_Fire = 2 * global.soulheartboost;
		
		_current_weapon_stats.Shot_Fire_Ticks = 3;
		_current_weapon_stats.Shot_Fire_Time = 60;
		
		_current_weapon_stats.Shot_Extra_Hits_Frequency = 30
			
		_current_weapon_stats = scr_Setup_Weapon_Stats(_current_weapon_stats);

		var _weapon_meta_data = {
			"minion": false,
			"barrage": false,
			"spawnProjectile": true
		}
		scr_Weapon_Output_Item_Mods(_current_weapon_stats, _weapon_meta_data, -1)
		scr_Weapon_Output(true, false, _current_weapon_stats)


}