function scr_Heart_Pick_Use() {
	//scr_Heart_Reactions();

	//shealth -= 1;
	
	with instance_create_depth(x, y, depth, obj_heart_pick_icon) {
		soul_source = other.id;
		
		image_xscale = 0.5;
		image_yscale = 0.5;
	}
	
	
	
	//var _soul = id;
	//var _dmg = (20 + other.spoweradd) * scr_Soul_Power_Factor_Calc(_soul)

	/*with(obj_Boss_Parent) {
		bosshealth -= _dmg;
		scr_setup_dmg_indicator(x,y, _dmg, c_white)
	} */


}
