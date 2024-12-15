// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Spirit_Boss_BullFX_Pre(_attack_stats = {}){
	
	
	if variable_struct_names_count(_attack_stats) > 0 {
		scr_XB05_v2(_attack_stats);
	} else {
		var _ogCount = bullet_count;
		scr_XB05(_ogCount);
	}
	
	//bullet_speed = bullet_speed * ((150 + global.souldespair + global.souldespairTemp) / 150) * ((150 + global.soulparanoia + global.soulparanoiaTemp) / 150) * ((100 + global.soulloathing + global.soulloathingTemp) / 100);
	
}