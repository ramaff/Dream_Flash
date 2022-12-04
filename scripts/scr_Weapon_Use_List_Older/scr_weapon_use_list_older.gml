

function scr_Weapon_Use_List_Older() {
	weapStop = 0;

	scr_C08();

	weaponCost = 0;
	weaponDelay = 0;

	if global.currentweapon = 1 {
	    weaponCost = ((7 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[001]) / 6))
	    weaponDelay = (17 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[001]) / 6);
	}
	if global.currentweapon = 2 {
	    weaponCost = ((12 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[002]) / 6))
	    weaponDelay = (20 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[002]) / 6);
	}
	if global.currentweapon = 3 {
	    weaponCost = ((18 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[003]) / 6))
	    weaponDelay = (30 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[003]) / 6);
	}
	if global.currentweapon = 4 {
	    weaponCost = ((5 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[004]) / 6))
	    weaponDelay = (12 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[004]) / 6);
	}
	if global.currentweapon = 5 {
	    weaponCost = ((8 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[005]) / 6))
	    weaponDelay = (15 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[005]) / 6);
	}
	if global.currentweapon = 6 {
	    weaponCost = ((10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[006]) / 6))
	    weaponDelay = (20 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[006]) / 6);
	}
	if global.currentweapon = 7 {
	    weaponCost = ((9 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[007]) / 6))
	    weaponDelay = (18 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[007]) / 6);
	}
	if global.currentweapon = 8 {
	    weaponCost = ((15 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[008]) / 6))
	    weaponDelay = (25 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[008]) / 6);
	}
	if global.currentweapon = 9 {
	    weaponCost = ((12 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[009]) / 6))
	    weaponDelay = (18 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[009]) / 6);
	}
	if global.currentweapon = 10 {
	    weaponCost = ((10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[010]) / 6))
	    weaponDelay = (21 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[010]) / 6);
	}
	if global.currentweapon = 11 {
	    weaponCost = ((14 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[011]) / 6))
	    weaponDelay = (25 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[011]) / 6);
	}
	if global.currentweapon = 12 {
	    weaponCost = ((15 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[012]) / 6))
	    weaponDelay = (21 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[012]) / 6);
	}
	if global.currentweapon = 13 {
	    weaponCost = ((12 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[013]) / 6))
	    weaponDelay = (18 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[013]) / 6);
	}
	if global.currentweapon = 14 {
	    weaponCost = ((18 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[014]) / 6))
	    weaponDelay = (28 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[014]) / 6);
	}
	if global.currentweapon = 15 {
	    weaponCost = ((12 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[015]) / 6))
	    weaponDelay = (24 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[015]) / 6);
	}
	if global.currentweapon = 16 {
	    weaponCost = ((14 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[016]) / 6))
	    weaponDelay = (20 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[016]) / 6);
	}
	if global.currentweapon = 17 {
	    weaponCost = ((13 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[017]) / 6))
	    weaponDelay = (19 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[017]) / 6);
	}
	if global.currentweapon = 18 {
	    weaponCost = ((13 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[018]) / 6))
	    weaponDelay = (20 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[018]) / 6);
	}
	if global.currentweapon = 19 {
	    weaponCost = ((44 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[019]) / 6))
	    weaponDelay = (45 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[019]) / 6);
	}
	if global.currentweapon = 20 {
	    weaponCost = ((2 - (senergyconservation / 10)) / senergyconservationfactor / ((6 + global.Weap[020]) / 6))
	    weaponDelay = (1 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[020]) / 6);
	}
	if global.currentweapon = 21 {
	    weaponCost = ((13 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[021]) / 6))
	    weaponDelay = (15 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[021]) / 6);
	}
	if global.currentweapon = 22 {
	    weaponCost = ((22 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[022]) / 6))
	    weaponDelay = (25 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[022]) / 6);
	}
	if global.currentweapon = 51 {
	    weaponCost = ((8 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[051]) / 6))
	    weaponDelay = (13 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[051]) / 6);
	}
	if global.currentweapon = 52 {
	    weaponCost = ((16 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[052]) / 6))
	    weaponDelay = (14 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[052]) / 6);
	}
	if global.currentweapon = 53 {
	    weaponCost = ((31 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[053]) / 6))
	    weaponDelay = (25 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[053]) / 6);
	}
	if global.currentweapon = 54 {
	    weaponCost = ((23 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[054]) / 6))
	    weaponDelay = (19 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[054]) / 6);
	}
	if global.currentweapon = 55 {
	    weaponCost = ((9 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[055]) / 6))
	    weaponDelay = (13 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[055]) / 6);
	}
	if global.currentweapon = 56 {
	    weaponCost = ((15 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[056]) / 6))
	    weaponDelay = (14 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[056]) / 6);
	}


	////////////////////////////////////////////////////////////////////
	//////////////////Sharp and Solid Weapon Use////////////////////////
	////////////////////////////////////////////////////////////////////

	if global.currentweapon = 101 {
	    weaponCost = ((8 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[101]) / 6))
	    weaponDelay = (21 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[101]) / 6);
	}
	if global.currentweapon = 102 {
	    weaponCost = ((9 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[102]) / 6))
	    weaponDelay = (20 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[102]) / 6);
	}
	if global.currentweapon = 103 {
	    weaponCost = ((12 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[103]) / 6))
	    weaponDelay = (27 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[103]) / 6);
	}
	if global.currentweapon = 104 {
	    weaponCost = ((14 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[104]) / 6))
	    weaponDelay = (16 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[104]) / 6);
	}
	if global.currentweapon = 105 {
	    weaponCost = ((18 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[105]) / 6))
	    weaponDelay = (28 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[105]) / 6);
	}
	if global.currentweapon = 106 {
	    weaponCost = ((24 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[106]) / 6))
	    weaponDelay = (28 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[106]) / 6);
	}
	if global.currentweapon = 107 {
	    weaponCost = ((20 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[107]) / 6))
	    weaponDelay = (30 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[107]) / 6);
	}
	if global.currentweapon = 108 {
	    weaponCost = ((10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[108]) / 6))
	    weaponDelay = (11 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[108]) / 6);
	}
	if global.currentweapon = 109 {
	    weaponCost = ((22 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[109]) / 6))
	    weaponDelay = (19 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[109]) / 6);
	}
	if global.currentweapon = 110 {
	    weaponCost = ((10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[110]) / 6))
	    weaponDelay = (21 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[110]) / 6);
	}
	if global.currentweapon = 111 {
	    weaponCost = ((16 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[111]) / 6))
	    weaponDelay = (21 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[111]) / 6);
	}
	if global.currentweapon = 112 {
	    weaponCost = ((17 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[112]) / 6))
	    weaponDelay = (25 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[112]) / 6);
	}
	if global.currentweapon = 113 {
	    weaponCost = ((16 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[113]) / 6))
	    weaponDelay = (19 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[113]) / 6);
	}
	if global.currentweapon = 114 {
	    weaponCost = ((12 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[114]) / 6))
	    weaponDelay = (9 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[114]) / 6);
	}
	if global.currentweapon = 115 {
	    weaponCost = ((18 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[115]) / 6))
	    weaponDelay = (19 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[115]) / 6);
	}
	if global.currentweapon = 117 {
	    weaponCost = ((15 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[117]) / 6))
	    weaponDelay = (20 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[117]) / 6);
	}
	if global.currentweapon = 118 {
	    weaponCost = ((39 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[118]) / 6))
	    weaponDelay = (36 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[118]) / 6);
	}
	if global.currentweapon = 151 {
	    weaponCost = ((21 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[151]) / 6))
	    weaponDelay = (25 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[151]) / 6);
	}
	if global.currentweapon = 152 {
	    weaponCost = ((18 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[152]) / 6))
	    weaponDelay = (19 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[152]) / 6);
	}

	////////////////////////////////////////////////////////////////////
	/////////////////////Explosive Weapon Use///////////////////////////
	////////////////////////////////////////////////////////////////////

	if global.currentweapon = 201 {
	    weaponCost = ((13 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[201]) / 6)) 
	    weaponDelay = (26 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[201]) / 6);
	}
	if global.currentweapon = 202 {
	    weaponCost = ((10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[202]) / 6))
	    weaponDelay = (19 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[202]) / 6);
	}
	if global.currentweapon = 203 {
	    weaponCost = ((17 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[203]) / 6))
	    weaponDelay = (25 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[203]) / 6);
	}
	if global.currentweapon = 204 {
	    weaponCost = ((25 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[204]) / 6))
	    weaponDelay = (39 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[204]) / 6);
	}
	if global.currentweapon = 205 {
	    weaponCost = ((17 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[205]) / 6))
	    weaponDelay = (28 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[205]) / 6);
	}
	if global.currentweapon = 206 {
	    weaponCost = ((29 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[206]) / 6))
	    weaponDelay = (37 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[206]) / 6);
	}
	if global.currentweapon = 207 {
	    weaponCost = ((40 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[207]) / 6))
	    weaponDelay = (54 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[207]) / 6);
	}
	if global.currentweapon = 208 {
	    weaponCost = ((12 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[208]) / 6))
	    weaponDelay = (10 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[208]) / 6);
	}
	if global.currentweapon = 209 {
	    weaponCost = ((22 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[209]) / 6))
	    weaponDelay = (27 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[209]) / 6);
	}
	if global.currentweapon = 210 {
	    weaponCost = ((13 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[210]) / 6))
	    weaponDelay = (17 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[210]) / 6);
	}
	if global.currentweapon = 211 {
	    weaponCost = ((11 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[211]) / 6))
	    weaponDelay = (10 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[211]) / 6);
	}
	if global.currentweapon = 213 {
	    weaponCost = ((33 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[213]) / 6))
	    weaponDelay = (39 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[213]) / 6);
	}
	if global.currentweapon = 214 {
	    weaponCost = ((25 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[214]) / 6))
	    weaponDelay = (25 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[214]) / 6);
	}
	if global.currentweapon = 215 {
	    weaponCost = ((49 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[215]) / 6))
	    weaponDelay = (38 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[215]) / 6);
	}

	////////////////////////////////////////////////////////////////////
	//////////////////////Magical Weapon Use////////////////////////////
	////////////////////////////////////////////////////////////////////

	if global.currentweapon = 301 {
	    weaponCost = ((9 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[301]) / 6))
	    weaponDelay = (18 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[301]) / 6);
	}
	if global.currentweapon = 302 {
	    weaponCost = ((12 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[302]) / 6))
	    weaponDelay = (27 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[302]) / 6);
	}
	if global.currentweapon = 303 {
	    weaponCost = ((14 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[303]) / 6))
	    weaponDelay = (23 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[303]) / 6);
	}
	if global.currentweapon = 304 {
	    weaponCost = ((18 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[304]) / 6))
	    weaponDelay = (24 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[304]) / 6);
	}
	if global.currentweapon = 305 {
	    weaponCost = ((16 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[305]) / 6))
	    weaponDelay = (25 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[305]) / 6);
	}
	if global.currentweapon = 306 {
	    weaponCost = ((22 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[306]) / 6)) 
	    weaponDelay = (37 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[306]) / 6);
	}
	if global.currentweapon = 307 {
	    weaponCost = ((6 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[307]) / 6)) 
	    weaponDelay = (6 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[307]) / 6);
	}
	if global.currentweapon = 308 {
	    weaponCost = ((30 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[308]) / 6))
	    weaponDelay = (35 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[308]) / 6);
	}
	if global.currentweapon = 309 {
	    weaponCost = ((13 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[309]) / 6))
	    weaponDelay = (16 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[309]) / 6);
	}
	if global.currentweapon = 310 {
	    weaponCost = ((17 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[310]) / 6))
	    weaponDelay = (20 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[310]) / 6);
	}
	if global.currentweapon = 311 {
	    weaponCost = ((30 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[311]) / 6))
	    weaponDelay = (39 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[311]) / 6);
	}
	if global.currentweapon = 313 {
	    weaponCost = ((24 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[313]) / 6))
	    weaponDelay = (30 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[313]) / 6);
	}
	if global.currentweapon = 314 {
	    weaponCost = ((33 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[314]) / 6))
	    weaponDelay = (30 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[314]) / 6);
	}

	////////////////////////////////////////////////////////////////////
	///////////////////////Energy Weapon Use////////////////////////////
	////////////////////////////////////////////////////////////////////

	if global.currentweapon = 401 {
	    weaponCost = ((9 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[401]) / 6))
	    weaponDelay = (15 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[401]) / 6);
	}
	if global.currentweapon = 402 {
	    weaponCost = ((11 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[402]) / 6)) 
	    weaponDelay = (21 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[402]) / 6);
	}
	if global.currentweapon = 403 {
	    weaponCost = ((28 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[403]) / 6)) 
	    weaponDelay = (40 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[403]) / 6);
	}
	if global.currentweapon = 404 {
	    weaponCost = ((12 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[404]) / 6))
	    weaponDelay = (8 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[404]) / 6);
	}
	if global.currentweapon = 405 {
	    weaponCost = ((16 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[405]) / 6)) 
	    weaponDelay = (12 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[405]) / 6);
	}
	if global.currentweapon = 406 {
	    weaponCost = ((15 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[406]) / 6)) 
	    weaponDelay = (19 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[406]) / 6);
	}
	if global.currentweapon = 407 {
	    weaponCost = ((6 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[407]) / 6)) 
	    weaponDelay = (5 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[407]) / 6);
	}
	if global.currentweapon = 408 {
	    weaponCost = ((15 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[408]) / 6))
	    weaponDelay = (17 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[408]) / 6);
	}
	if global.currentweapon = 409 {
	    weaponCost = ((11 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[409]) / 6)) 
	    weaponDelay = (20 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[409]) / 6);
	}
	if global.currentweapon = 410 {
	    weaponCost = ((8 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[410]) / 6)) 
	    weaponDelay = (7 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[410]) / 6);
	}
	if global.currentweapon = 411 {
	    weaponCost = ((10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[411]) / 6)) 
	    weaponDelay = (15 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[411]) / 6);
	}
	if global.currentweapon = 413 {
	    weaponCost = ((50 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[413]) / 6)) 
	    weaponDelay = (50 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[413]) / 6);
	}
	if global.currentweapon = 414 {
	    weaponCost = ((21 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[414]) / 6)) 
	    weaponDelay = (28 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[414]) / 6);
	}

	if global.currentweapon = 501 {
	    weaponCost = ((35 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[501]) / 6)) 
	    weaponDelay = (60 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[501]) / 6);
	}
	if global.currentweapon = 502 {
	    weaponCost = ((35 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[502]) / 6))
	    weaponDelay = (60 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[502]) / 6);
	}
	if global.currentweapon = 503 {
	    weaponCost = ((55 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[503]) / 6)) 
	    weaponDelay = (60 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[503]) / 6);
	}
	if global.currentweapon = 504 {
	    weaponCost = ((45 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[504]) / 6))
	    weaponDelay = (60 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[504]) / 6);
	}


	if global.currentweapon = 601 {
	    weaponCost = ((9 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[601]) / 6)) 
	    weaponDelay = (3 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[601]) / 6);
	}
	if global.currentweapon = 602 {
	    weaponCost = ((45 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[602]) / 6)) 
	    weaponDelay = (45 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[602]) / 6);
	}
	if global.currentweapon = 603 {
	    weaponCost = ((51 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[603]) / 6)) 
	    weaponDelay = (44 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[603]) / 6);
	}
	if global.currentweapon = 604 {
	    weaponCost = ((40 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[604]) / 6)) 
	    weaponDelay = (45 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[604]) / 6);
	}
	if global.currentweapon = 605 {
		weaponCost = ((40 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[605]) / 6)) 
	    weaponDelay = (30 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[605]) / 6);	
	}
	/*
	weaponCost = ((40 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6)) 
	weaponDelay = (30 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6);	
	*/
	
	if weaponDelay <= 1 {
	    weaponDelay = 1;
	}

	////////////////////////////////////////////////////////////////////
	//////////////////////Imaginary Weapon Use//////////////////////////
	////////////////////////////////////////////////////////////////////

	scr_C12();

	scr_C14();

	if global.D10activate >= 1 {
		weaponCost = weaponCost * (1 + (0.5 * global.D10activate));
	}


	scr_E11_Weapon();

	weaponCost = weaponCost / (1 + ((global.soulperception + global.soulperceptionTemp) / 160));

	if senergy > weapStop + weaponCost { 
	
		global.soulNoShoot = 0;
    
	    if global.currentweapon = 1 {
	        scr_Lesser_Essence_Shot();
	    }
	    if global.currentweapon = 2 {
	        scr_Powered_Essence_Shot();
	    }
	    if global.currentweapon = 3 {
	        scr_Heavy_Essence_Shot();
	    }
	    if global.currentweapon = 4 {
	        scr_Light_Essence_Shot();
	    }
	    if global.currentweapon = 5 {
	        scr_Swift_Essence_Shot();
	    }
	    if global.currentweapon = 6 {
	        scr_Piercing_Essence_Shot();
	    }
	    if global.currentweapon = 7 {
	        scr_Chain_Essence_Shot();
	    }
	    if global.currentweapon = 8 {
	        scr_Impact_Essence_Shot();
	    }
	    if global.currentweapon = 9 {
	        scr_Dense_Essence_Shot();
	    }
	    if global.currentweapon = 10 {
	        scr_Charged_Essence_Shot();
	    }
	    if global.currentweapon = 11 {
	        scr_Poison_Essence_Shot();
	    }
	    if global.currentweapon = 12 {
	        scr_Multi_Essence_Shot();
	    }
	    if global.currentweapon = 13 {
	        scr_Splitting_Essence_Shot();
	    }
	    if global.currentweapon = 14 {
	        scr_Barrier_Essence_Shot();
	    }
	    if global.currentweapon = 15 {
	        scr_Weakening_Essence_Shot();
	    }
	    if global.currentweapon = 16 {
	        scr_Laser_Essence_Shot();
	    }
	    if global.currentweapon = 17 {
	        scr_Wave_Essence_Shot();
	    }
	    if global.currentweapon = 18 {
	        scr_Helix_Essence_Shot();
	    }
	    if global.currentweapon = 19 {
	        scr_Hyper_Essence_Shot();
	    }
	    if global.currentweapon = 20 {
	        scr_Essence_Beam_Shot();
	    }
	    if global.currentweapon = 21 {
	        scr_Rain_Maker_Use();
	    }
		if global.currentweapon = 22 {
	        scr_Rising_Spikes_Use();
	    }
	    if global.currentweapon = 51 {
	        scr_Essence_Whip_Shot();
	    }
	    if global.currentweapon = 52 {
	        scr_Power_Whip_Shot();
	    }
	    if global.currentweapon = 53 {
	        scr_Dreamers_Blade_Use();
	    }
	    if global.currentweapon = 54 {
	        scr_Soul_Spear_Use();
	    }
		if global.currentweapon = 55 {
	        scr_Soul_Punch_Use();
	    }
		if global.currentweapon = 56 {
	        scr_Soul_Strike_Use();
	    }
    
	    ////////////////////////////////////////////////////////////////////
	    //////////////////Sharp and Solid Weapon Use////////////////////////
	    ////////////////////////////////////////////////////////////////////
    
	    if global.currentweapon = 101 {
	        scr_Rock_Toss_Use();
	    }
	    if global.currentweapon = 102 {
	        scr_Bag_Of_Marbles_Use();
	    }
	    if global.currentweapon = 103 {
	        scr_Flying_Disk_Use();
	    }
	    if global.currentweapon = 104 {
	        scr_Shuriken_Use();
	    }
	    if global.currentweapon = 105 {
	        scr_Spike_Ball_Use();
	    }
	    if global.currentweapon = 106 {
	        scr_Boomerang_Blade_Use();
	    }
	    if global.currentweapon = 107 {
	        scr_Spinning_Top_Use();
	    }
	    if global.currentweapon = 108 {
	        scr_Sharp_Machine_Gun_Use();
	    }
	    if global.currentweapon = 109 {
	        scr_Throwing_Knives_Use();
	    }
	    if global.currentweapon = 110 {
	        scr_Archery_Bow_Use();
	    }
	    if global.currentweapon = 111 {
	        scr_Crossbow_Use();
	    }
	    if global.currentweapon = 112 {
	        scr_Shield_Shot_Use();
	    }
	    if global.currentweapon = 113 {
	        scr_Marble_Rifle_Use();
	    }
	    if global.currentweapon = 114 {
	        scr_Marble_Minigun_Use();
	    }
	    if global.currentweapon = 115 {
	        scr_Saw_Blade_Launcher_Use();
	    }
	    if global.currentweapon = 117 {
	        scr_Blow_Dart_Use();
	    }
		if global.currentweapon = 118 {
			scr_Sharp_Shooter_Use();	
		}
	    if global.currentweapon = 151 {
	        scr_Knight_Blade_Use();
	    }
		if global.currentweapon = 152 {
	        scr_Safety_Scissors_Use();
	    }
    
	    ////////////////////////////////////////////////////////////////////
	    /////////////////////Explosive Weapon Use///////////////////////////
	    ////////////////////////////////////////////////////////////////////
    
	    if global.currentweapon = 201 {
	        scr_Arm_Cannon_Use();
	    }
	    if global.currentweapon = 202 {
	        scr_Snap_Pops_Use();
	    }
	    if global.currentweapon = 203 {
	        scr_Missile_Launcher_Use();
	    }
	    if global.currentweapon = 204 {
	        scr_Big_Bombs_Use();
	    }
	    if global.currentweapon = 205 {
	        scr_Bombarder_Use();
	    }
	    if global.currentweapon = 206 {
	        scr_Boss_Muncher_Use();
	    }
	    if global.currentweapon = 207 {
	        scr_Splodey_Seeds_Use();
	    }
	    if global.currentweapon = 208 {
	        scr_Micro_Bomb_Cannon_Use();
	    }
	    if global.currentweapon = 209 {
	        scr_Firecracker_Launcher_Use();
	    }
	    if global.currentweapon = 210 {
	        scr_Pop_Gun_Use();
	    }
	    if global.currentweapon = 211 {
	        scr_Semi_Auto_Rifle_Use();
	    }
		if global.currentweapon = 212 {
	        scr_Grenade_Use();
	    }
	    if global.currentweapon = 213 {
	        scr_Explosion_Machine_Use();
	    }
		if global.currentweapon = 214 {
	        scr_Frosty_Cannon_Use();
	    }
	    if global.currentweapon = 215 {
	        scr_Exploding_Sniper_Rifle_Use();
	    }
    
    
	    ////////////////////////////////////////////////////////////////////
	    //////////////////////Magical Weapon Use////////////////////////////
	    ////////////////////////////////////////////////////////////////////
    
	    if global.currentweapon = 301 {
	        scr_Magic_Bolt_Use();
	    }
	    if global.currentweapon = 302 {
	        scr_Charged_Bolt_Use();
	    }
	    if global.currentweapon = 303 {
	        scr_Fire_Ball_Use();
	    }
	    if global.currentweapon = 304 {
	        scr_Frost_Shard_Use();
	    }
	    if global.currentweapon = 305 {
	        scr_Lightning_Use();
	    }
	    if global.currentweapon = 306 {
	        scr_Magic_Twister_Use();
	    }
	    if global.currentweapon = 307 {
	        scr_Magic_Bubbles_Use();
	    }
	    if global.currentweapon = 308 {
	        scr_Earth_Magic_Use();
	    }
	    if global.currentweapon = 309 {
	        scr_Tide_Staff_Use();
	    }
	    if global.currentweapon = 310 {
	        scr_Phase_Magic_Staff_Use();
	    }
	    if global.currentweapon = 311 {
	        scr_Magic_Shields_Use();
	    }
	    if global.currentweapon = 312 {
	        scr_Adept_Magic_Staff_Use();
	    }
		if global.currentweapon = 313 {
	        scr_Maw_Staff_Use();
	    }
		if global.currentweapon = 314 {
	        scr_Blade_Staff_Use();
	    }
    
	    ////////////////////////////////////////////////////////////////////
	    ///////////////////////Energy Weapon Use////////////////////////////
	    ////////////////////////////////////////////////////////////////////
    
	    if global.currentweapon = 401 {
	        scr_Energy_Ball_Use();
	    }
	    if global.currentweapon = 402 {
	        scr_Sparks_Use();
	    }
	    if global.currentweapon = 403 {
	        scr_Laser_Barrage_Use();
	    }
	    if global.currentweapon = 404 {
	        scr_Plasma_Visor_Use();
	    }
	    if global.currentweapon = 405 {
	        scr_Power_Gun_Use();
	    }
	    if global.currentweapon = 406 {
	        scr_Bouncer_Gun_Use();
	    }
	    if global.currentweapon = 407 {
	        scr_Tesla_Coil_Use();
	    }
	    if global.currentweapon = 408 {
	        scr_Shock_Chain_Gun_Use();
	    }
	    if global.currentweapon = 409 {
	        scr_Charge_Rod_Use();
	    }
	    if global.currentweapon = 410 {
	        scr_Energy_Crystal_Use();
	    }
	    if global.currentweapon = 411 {
	        scr_Forcefield_Charger_Use();
	    }
	    if global.currentweapon = 412 {
	        scr_Energy_Bomb_Cannon_Use();
	    }
		if global.currentweapon = 413 {
	        scr_Guardian_Cannon_Use();
	    }
		if global.currentweapon = 414 {
	        scr_Dream_Cell_Use();
	    }
    
	    if global.currentweapon = 501 {
	        scr_Fleeting_Soul_Staff_Use();
	    }
	    if global.currentweapon = 502 {
	        scr_Manifesting_Rod_Use();
	    }
		if global.currentweapon = 503 {
	        scr_Battle_Flag_Use();
	    }
	    if global.currentweapon = 504 {
	        scr_Anvil_Rod_Use();
	    }
    
	    if global.currentweapon = 601 {
	        scr_Healing_Essence_Use();
	    }
		if global.currentweapon = 602 {
	        scr_Protective_Barrier_Use();
	    }
	    if global.currentweapon = 603 {
	        scr_Brainstorm_Umbrella_Use();
	    }
	    if global.currentweapon = 604 {
	        scr_Bounce_Forcefield_Use();
	    }
		if global.currentweapon = 605 {
			scr_Heart_Pick_Use();	
		}
    
	    senergy -= weaponCost / (1 + (global.U03boost / 2000));
	    sdelay += weaponDelay / ((160 + global.souldexterity + global.souldexterityTemp) / 160);
	    sWeaponUseFrame = 1;   
	}



}
