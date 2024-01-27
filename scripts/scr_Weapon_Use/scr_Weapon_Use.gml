function scr_Weapon_Use() {
	var chargeweapon = 0
  
	if scurrentstate = "Ascending" || global.currentweapon = 10 || global.currentweapon = 56 || global.currentweapon = 110 || global.currentweapon = 111 || global.currentweapon = 153 || global.currentweapon = 212 || global.currentweapon = 312 || global.currentweapon = 405 || global.currentweapon = 411 || global.currentweapon = 412 {
	    chargeweapon = 1;
	}
	if scr_Minion_Weapon(global.currentweapon) {
		chargeweapon = 0;
	}


	if chargeweapon = 0 {
	    if sdelay <= 0 and global.N[5] <= 0 {    
	        scr_Weapon_Use_List();
	    }
	}
	
	scr_U03_Step()

	scr_N05();


}
