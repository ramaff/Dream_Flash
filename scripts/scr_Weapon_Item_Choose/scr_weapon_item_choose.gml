function scr_Weapon_Item_Choose() {
	//var elementform = 1 + irandom(75);
	//weapontype = noone;
	//itemform = 1;

	var bCompLim = 65;
	var hCompLim = 98;
	var sCompLim = 100;

	if global.currentchapter = 2 {
		bCompLim = 40;
		hCompLim = 95;
	}
	if global.currentchapter = 3 {
		bCompLim = 15;
		hCompLim = 85;
	}
	if global.currentchapter = 4 {
		bCompLim = 5;
		hCompLim = 70;
	}

	var wTier = "Basic";
	var weaponPool = global.simpleWeaponPool;

	var wn = 1 + irandom(99);

	if wn > bCompLim and wn <= hCompLim {
		wTier = "High";
		var weaponPool = global.complexWeaponPool;
	}
	if wn > hCompLim and wn <= sCompLim {
		wTier = "Special";
		var weaponPool = global.masterfulWeaponPool;
	}
	
	return scr_Pool_Pick(weaponPool);

	/*
	if wTier = "Basic" {
		itemform = choose(1,2,3,4,5,6,7,10,12,51,101,102,103,104,105,110,151,152,201,202,203,210,301,302,303,309,401,402,403,409,414,501,502,601,602,603);
	}
	if wTier = "High" {
		itemform = choose(8,9,11,12,15,16,52,54,107,108,109,111,112,114,115,116,204,205,207,209,211,212,213,215,304,306,307,308,310,311,312,313,314,404,405,406,407,408,410,411,503,504,505,604,605);	
	}
	if wTier = "Special" {
		itemform = choose(13,14,53,113,153,206,412,413);	
	}
	/*
	if elementform >= 1 {
	    itemform = 1 + irandom(24);
	    if itemform = 22 { itemform = 51; }
	    if itemform = 23 { itemform = 52; }
	    if itemform = 24 { itemform = 53; }
	    if itemform = 25 { itemform = 54; }
	}
	if elementform >= 21 {
	    itemform = 101 + irandom(16);
	    if itemform = 116 { itemform = 151; }
		if itemform = 117 { itemform = 152; }
	}
	if elementform >= 34 {
	    itemform = 201 + irandom(12);
	    if itemform = 213 { itemform = 214; }
		if itemform = 212 { itemform = 213; }
	}
	if elementform >= 45 {
	    itemform = 301 + irandom(12);
	}
	if elementform >= 56 {
	    itemform = 401 + irandom(12);
	}
	if elementform >= 67 {
	    itemform = 501 + irandom(3);
	}
	if elementform >= 71 {
	    itemform = 601 + irandom(3);
	} 
	*/
	/*

	var dItem = 0;
	for(j = 1; j <= 13; j++) {
		if itemform = Floor_Layout_Control.Flash[i,j+6] {
			dItem = 1;	
		}
	}

	if dItem = 1 {
		return scr_Weapon_Item_Choose();
	} else {
		return itemform;
	}

*/


}
