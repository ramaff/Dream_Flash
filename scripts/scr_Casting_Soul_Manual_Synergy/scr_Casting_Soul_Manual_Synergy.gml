// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Casting_Soul_Manual_Synergy(){
	
	
	if global.currentweapon < 700 {
		var _casting = scr_State_Active_Check("Casting")
		
		if Weapon_Melee > 0 and _casting {
		
			Shot_Type = obj_Melee_Caster_Shot;
			Shot_Lifespan = 180;
			Shot_Size = Shot_Size / 2;
			Shot_Duplicate_Sprite = Shot_Sprite;
			Shot_Sprite = spr_Casting_Sword_Orbital;
			Shot_Point_Angle = 0;
		
			//Shot_Off_State = 1;
		}
		if Shot_Beam > 0 and _casting {
		
			Shot_Type = obj_Beam_Caster_Shot;
			Shot_Lifespan = 180;
			Shot_Size = Shot_Size / 2;
			Shot_Duplicate_Sprite = Shot_Sprite;
			Shot_Sprite = spr_Casting_Beam_Orbital;
			Shot_Point_Angle = 0;
		
			//Shot_Off_State = 1;
		}
	}
}