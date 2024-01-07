function scr_Weapon_Item_Choose() {

	var _med_chance = 30;
	var _high_chance = 1;

	if global.currentchapter = 2 {
		_med_chance = 50;
		_high_chance = 5;
	}
	if global.currentchapter = 3 {
		_med_chance = 70;
		_high_chance = 15;
	}
	if global.currentchapter = 4 {
		_med_chance = 65;
		_high_chance = 30;
	}
	
	_med_chance = 100 / _med_chance;
	_high_chance = 100 / _high_chance

	var wTier = "Basic";
	var weaponPool = global.simpleWeaponPool;

	if scr_Chance(_med_chance) {
		wTier = "High";
		var weaponPool = global.complexWeaponPool;
	} else if scr_Chance(_high_chance) {
		wTier = "Special";
		var weaponPool = global.masterfulWeaponPool;
	}
	
	return scr_Pool_Pick(weaponPool);


}
