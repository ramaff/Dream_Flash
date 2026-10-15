function scr_Weapon_Item_Choose() {
	var _med_chance = 30;
	var _high_chance = 1;

    switch (global.currentchapter) {
    	case 2: _med_chance = 50 _high_chance = 5 break;
        case 3: _med_chance = 70 _high_chance = 15 break;
        case 4: _med_chance = 65 _high_chance = 30 break;
    }
	
	_med_chance = 100 / _med_chance;
	_high_chance = 100 / _high_chance

	var wTier = "Basic";
	var weaponPool = global.simpleWeaponPool;

	if scr_Chance(_med_chance) {
		wTier = "High";
		weaponPool = global.complexWeaponPool;
	} else if scr_Chance(_high_chance) {
		wTier = "Special";
		weaponPool = global.masterfulWeaponPool;
	}
	
	return scr_Pool_Pick(weaponPool);
}
