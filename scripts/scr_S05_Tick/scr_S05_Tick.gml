// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_S05_Tick(){
	if global.S[5] >= 1 {
		var _comfort_level = 0;
		with(obj_cope_zone_v2) {
			if distance_to_object(other) < 1 {
				scr_Heal_Soul(1 * global.S[5])
				scr_Refresh_Soul(5 * global.S[5])
				_comfort_level++;
			}
		}
		with(obj_Happy_Place) {
			if distance_to_object(other) < 1 {
				scr_Heal_Soul(1 * global.S[5])
				scr_Refresh_Soul(5 * global.S[5])
				_comfort_level++;
			}
		}
		if _comfort_level = 0 {
			var damageamount = 1 * global.S[5];
			var defenseamount = 0;
			scr_Soul_Damage_Calculation(damageamount, defenseamount);	
		}
	}
}