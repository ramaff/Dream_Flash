// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Casting_Soul_Manual_Synergy(){
	
	var reverie = false;
	if global.F[5] >= 1 {
		reverie = scr_Chance(10 / global.F[5]);
	}
	
	if global.currentweapon < 700 {
		if Weapon_Melee > 0 and (obj_Soul_Parent.scurrentstate = "Casting" || (obj_Soul_Parent.stransformedstate == "Scrub" and reverie == true)) {
		
			Shot_Type = obj_Melee_Caster_Shot;
			Shot_Lifespan = 180;
			Shot_Size = Shot_Size / 2;
			Shot_Duplicate_Sprite = Shot_Sprite;
			Shot_Sprite = spr_Casting_Sword_Orbital;
			Shot_Point_Angle = 0;
		
			//Shot_Off_State = 1;
		}
		if Shot_Beam > 0 and (obj_Soul_Parent.scurrentstate = "Casting" || (obj_Soul_Parent.stransformedstate == "Scrub" and reverie == true)) {
		
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