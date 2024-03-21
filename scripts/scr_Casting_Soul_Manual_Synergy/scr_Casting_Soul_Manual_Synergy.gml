// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Casting_Soul_Manual_Synergy(){
	
	
	if global.currentweapon < 700 {
		var _casting = scr_State_Active_Check("Casting")
		
		if current_weapon_stats.Weapon_Melee > 0 and _casting {
		
			current_weapon_stats.Shot_Type = obj_Melee_Caster_Shot;
			current_weapon_stats.Shot_Lifespan = 180;
			current_weapon_stats.Shot_Size = Shot_Size / 2;
			current_weapon_stats.Shot_Duplicate_Sprite = Shot_Sprite;
			current_weapon_stats.Shot_Sprite = spr_Casting_Sword_Orbital;
			current_weapon_stats.Shot_Point_Angle = 0;
		
			//Shot_Off_State = 1;
		}
		if current_weapon_stats.Shot_Beam > 0 and _casting {
		
			current_weapon_stats.Shot_Type = obj_Beam_Caster_Shot;
			current_weapon_stats.Shot_Lifespan = 180;
			current_weapon_stats.Shot_Size = Shot_Size / 2;
			current_weapon_stats.Shot_Duplicate_Sprite = current_weapon_stats.Shot_Sprite;
			current_weapon_stats.Shot_Sprite = spr_Casting_Beam_Orbital;
			current_weapon_stats.Shot_Point_Angle = 0;
		
			//Shot_Off_State = 1;
		}
	}
}