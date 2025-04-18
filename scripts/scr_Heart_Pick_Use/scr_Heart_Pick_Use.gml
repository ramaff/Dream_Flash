function scr_Heart_Pick_Use() {
	scr_Heart_Reactions();

	shealth -= 1;

	with(obj_Boss_Parent) {
		var _dmg = (20 + other.spoweradd) * ((10 + other.spowerfactor + other.sattackfactorbuffamount) / 10) * other.spower / 10 * ((60 + global.soulstrength + global.soulstrengthTemp) / 60);
		bosshealth -= _dmg;
		scr_setup_dmg_indicator(x,y, _dmg, c_white)
	}


}
