function scr_Weapon_Stat_Add() {
	global.Weap[itemindex]++;

	if global.recollectionFloorWeap[itemindex] = 0 || weapUp = 1 {
	    global.recollectionWeap[itemindex]++;
	    global.recollectionFloorWeap[itemindex] += 1;
	}

	/*
	if itemindex = 1 {
	    global.Weap001++;
	}
	if itemindex = 2 {
	    global.Weap002++;
	}
	if itemindex = 3 {
	    global.Weap003++;
	}
	if itemindex = 4 {
	    global.Weap004++;
	}
	if itemindex = 5 {
	    global.Weap005++;
	}
	if itemindex = 6 {
	    global.Weap006++;
	}
	if itemindex = 7 {
	    global.Weap007++;
	}
	if itemindex = 8 {
	    global.Weap008++;
	}
	if itemindex = 9 {
	    global.Weap009++;
	}
	if itemindex = 10 {
	    global.Weap010++;
	}
	if itemindex = 11 {
	    global.Weap011++;
	}
	if itemindex = 12 {
	    global.Weap012++;
	}
	if itemindex = 13 {
	    global.Weap013++;
	}
	if itemindex = 14 {
	    global.Weap014++;
	}
	if itemindex = 15 {
	    global.Weap015++;
	}
	if itemindex = 16 {
	    global.Weap016++;
	}
	if itemindex = 17 {
	    global.Weap017++;
	}
	if itemindex = 18 {
	    global.Weap018++;
	}
	if itemindex = 19 {
	    global.Weap019++;
	}
	if itemindex = 20 {
	    global.Weap020++;
	}

	if itemindex = 101 {
	    global.Weap101++;
	}
	if itemindex = 102 {
	    global.Weap102++;
	}
	if itemindex = 103 {
	    global.Weap103++;
	}
	if itemindex = 104 {
	    global.Weap104++;
	}
	if itemindex = 105 {
	    global.Weap105++;
	}
	if itemindex = 106 {
	    global.Weap106++;
	}
	if itemindex = 107 {
	    global.Weap107++;
	}
	if itemindex = 108 {
	    global.Weap108++;
	}
	if itemindex = 109 {
	    global.Weap109++;
	}
	if itemindex = 110 {
	    global.Weap110++;
	}
	if itemindex = 111 {
	    global.Weap111++;
	}
	if itemindex = 112 {
	    global.Weap112++;
	}
	if itemindex = 113 {
	    global.Weap113++;
	}
	if itemindex = 114 {
	    global.Weap114++;
	}
	if itemindex = 115 {
	    global.Weap115++;
	}
	if itemindex = 116 {
	    global.Weap116++;
	}
	if itemindex = 117 {
	    global.Weap117++;
	}
	if itemindex = 118 {
	    global.Weap118++;
	}
	if itemindex = 119 {
	    global.Weap119++;
	}
	if itemindex = 120 {
	    global.Weap120++;
	}

	if itemindex = 201 {
	    global.Weap201++;
	}
	if itemindex = 202 {
	    global.Weap202++;
	}
	if itemindex = 203 {
	    global.Weap203++;
	}
	if itemindex = 204 {
	    global.Weap204++;
	}
	if itemindex = 205 {
	    global.Weap205++;
	}
	if itemindex = 206 {
	    global.Weap206++;
	}
	if itemindex = 207 {
	    global.Weap207++;
	}
	if itemindex = 208 {
	    global.Weap208++;
	}
	if itemindex = 209 {
	    global.Weap209++;
	}
	if itemindex = 210 {
	    global.Weap210++;
	}
	if itemindex = 211 {
	    global.Weap211++;
	}
	if itemindex = 212 {
	    global.Weap212++;
	}
	if itemindex = 213 {
	    global.Weap213++;
	}
	if itemindex = 214 {
	    global.Weap214++;
	}
	if itemindex = 215 {
	    global.Weap215++;
	}
	if itemindex = 216 {
	    global.Weap216++;
	}
	if itemindex = 217 {
	    global.Weap217++;
	}
	if itemindex = 218 {
	    global.Weap218++;
	}
	if itemindex = 219 {
	    global.Weap219++;
	}
	if itemindex = 220 {
	    global.Weap220++;
	}

	if itemindex = 301 {
	    global.Weap301++;
	}
	if itemindex = 302 {
	    global.Weap302++;
	}
	if itemindex = 303 {
	    global.Weap303++;
	}
	if itemindex = 304 {
	    global.Weap304++;
	}
	if itemindex = 305 {
	    global.Weap305++;
	}
	if itemindex = 306 {
	    global.Weap306++;
	}
	if itemindex = 307 {
	    global.Weap307++;
	}
	if itemindex = 308 {
	    global.Weap308++;
	}
	if itemindex = 309 {
	    global.Weap309++;
	}
	if itemindex = 310 {
	    global.Weap310++;
	}
	if itemindex = 311 {
	    global.Weap311++;
	}
	if itemindex = 312 {
	    global.Weap312++;
	}
	if itemindex = 313 {
	    global.Weap313++;
	}
	if itemindex = 314 {
	    global.Weap314++;
	}
	if itemindex = 315 {
	    global.Weap315++;
	}
	if itemindex = 316 {
	    global.Weap316++;
	}
	if itemindex = 317 {
	    global.Weap317++;
	}
	if itemindex = 318 {
	    global.Weap318++;
	}
	if itemindex = 319 {
	    global.Weap319++;
	}
	if itemindex = 320 {
	    global.Weap320++;
	}

	if itemindex = 401 {
	    global.Weap401++;
	}
	if itemindex = 402 {
	    global.Weap402++;
	}
	if itemindex = 403 {
	    global.Weap403++;
	}
	if itemindex = 404 {
	    global.Weap404++;
	}
	if itemindex = 405 {
	    global.Weap405++;
	}
	if itemindex = 406 {
	    global.Weap406++;
	}
	if itemindex = 407 {
	    global.Weap407++;
	}
	if itemindex = 408 {
	    global.Weap408++;
	}
	if itemindex = 409 {
	    global.Weap409++;
	}
	if itemindex = 410 {
	    global.Weap410++;
	}
	if itemindex = 411 {
	    global.Weap411++;
	}
	if itemindex = 412 {
	    global.Weap412++;
	}
	if itemindex = 413 {
	    global.Weap413++;
	}
	if itemindex = 414 {
	    global.Weap414++;
	}
	if itemindex = 415 {
	    global.Weap415++;
	}
	if itemindex = 416 {
	    global.Weap416++;
	}
	if itemindex = 417 {
	    global.Weap417++;
	}
	if itemindex = 418 {
	    global.Weap418++;
	}
	if itemindex = 419 {
	    global.Weap419++;
	}
	if itemindex = 420 {
	    global.Weap420++;
	}


/* end scr_Weapon_Stat_Add */
}
