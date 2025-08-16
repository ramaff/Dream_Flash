// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Casting_Soul_Manual_Synergy(_cw){
	
	
	if global.currentweapon < 700 {
		var _casting = scr_State_Active_Check("Casting")
		
		if _cw.Shot_Melee = true and _casting {
			
			_cw.Shot_Extra_Stats = [scr_Dupe_Struct(_cw)];
		
			_cw.Shot_Type = "obj_Melee_Caster_Shot";
			_cw.Shot_Life_Span = 180;
			_cw.Shot_Speed = max(_cw.Shot_Speed, 5);
			//_cw.Shot_Size = _cw.Shot_Size / 2;
			//_cw.Shot_Duplicate_Sprite = _cw.Shot_Sprite;
			_cw.Shot_Sprite = "spr_Casting_Sword_Orbital";
			_cw.Shot_Point_Angle = 0;
			_cw.Shot_Extra_Stats[0].Shot_Power_Level = _cw.Shot_Power;
			//_cw.Shot_Extra_Stats[0].Shot_Mouse = true;
			//_cw.Shot_Extra_Stats[0].Shot_Point_Angle = true;
			
		
			//Shot_Off_State = 1;
		}
		if _cw.Shot_Beam > 0 and _casting {
			
			_cw.Shot_Power = _cw.Shot_Power * 2;
			
			_cw.Shot_Extra_Stats = [scr_Dupe_Struct(_cw)];
		
			//_cw.Shot_Beam = 0;
			_cw.Shot_Speed = max(_cw.Shot_Speed, 5);
			
			_cw.Shot_Extra_Stats[0].Shot_Mouse = false
			_cw.Shot_Extra_Stats[0].Shot_Beam = 1
			_cw.Shot_Extra_Stats[0].Shot_Power_Level = _cw.Shot_Power;
			_cw.Shot_Extra_Stats[0].Shot_Life_Span = 15;
			
			_cw.Shot_Type = "obj_Beam_Caster_Shot";
			_cw.Shot_Life_Span = 180;
			_cw.Shot_Size = _cw.Shot_Size / 2;
			_cw.Shot_Duplicate_Sprite = _cw.Shot_Sprite;
			_cw.Shot_Sprite = "spr_Casting_Beam_Orbital";
			_cw.Shot_Point_Angle = 0;
		
			//Shot_Off_State = 1;
		}
	}
}