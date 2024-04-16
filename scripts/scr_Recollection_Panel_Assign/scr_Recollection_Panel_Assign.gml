function scr_Recollection_Panel_Assign() {
	itemVal = "?00"
	var curri = 1;
	var curriend = curri;
	var i = curri;

	if global.recollectCategory = "Weapons" {
		curriend += 19;
	    for(i = curri; i <= curriend; i++) {
	        if buttNum = i {
	            itemVal = i;
	            if i > 16 {
	                itemVal = 34 + i;
	            }
	        }
	    }
		curri = curriend + 1;
		curriend = curri + 18;
	    for(i = curri; i <= curriend; i++) {
	        if buttNum = i {
	            itemVal = i + 80;
				if itemVal >= 117 {
	                itemVal += 34;
	            }
	        }
	    }
		curri = curriend + 1;
		curriend = curri + 13;
	    for(i = curri; i <= curriend; i++) {
	        if buttNum = i {
	            itemVal = i + 161;
	        }
	    }
		curri = curriend + 1;
		curriend = curri + 13;
	    for(i = curri; i <= curriend; i++) {
	        if buttNum = i {
	            itemVal = i + 247;
	        }
	    }
		curri = curriend + 1;
		curriend = curri + 13;
	    for(i = curri; i <= curriend; i++) {
	        if buttNum = i {
	            itemVal = i + 333;
	        }
	    }
		curri = curriend + 1;
		curriend = curri + 4;
	    for(i = curri; i <= curriend; i++) {
	        if buttNum = i {
	            itemVal = i + 419;
	        }
	    }
		curri = curriend + 1;
		curriend = curri + 4;
	    for(i = curri; i <= curriend; i++) {
	        if buttNum = i {
	            itemVal = i + 514;
	        }
	    }
	}

	if global.recollectCategory = "Items" {
		var inum = 0;
	    for(i = inum; i <= inum + 9; i++) {
	        if buttNum = i {
	            itemVal = "A0" + string(i);
	        }
	    }
	    for(i = inum+10; i <= inum+14; i++) {
	        if buttNum = i {
	            itemVal = "A" + string(i);
	        }
	    }
		inum += 15;
	    for(i = inum; i <= inum + 9; i++) {
	        if buttNum = i {
	            itemVal = "B0" + string(i - inum);
	        }
	    }
	    for(i = inum+10; i <= inum+14; i++) {
	        if buttNum = i {
	            itemVal = "B" + string(i - inum);
	        }
	    }
		inum += 15;
	    for(i = inum; i <= inum + 9; i++) {
	        if buttNum = i {
	            itemVal = "C0" + string(i - inum);
	        }
	    }
	    for(i = inum+10; i <= inum+14; i++) {
	        if buttNum = i {
	            itemVal = "C" + string(i - inum);
	        }
	    }
		inum += 15;
	    for(i = inum; i <= inum + 9; i++) {
	        if buttNum = i {
	            itemVal = "D0" + string(i - inum);
	        }
	    }
	    for(i = inum+10; i <= inum+14; i++) {
	        if buttNum = i {
	            itemVal = "D" + string(i - inum);
	        }
	    }
		inum += 15;
	    for(i = inum; i <= inum + 9; i++) {
	        if buttNum = i {
	            itemVal = "E0" + string(i - inum);
	        }
	    }
	    for(i = inum+10; i <= inum+14; i++) {
	        if buttNum = i {
	            itemVal = "E" + string(i - inum);
	        }
	    }
		inum += 15;
	    for(i = inum; i <= inum + 9; i++) {
	        if buttNum = i {
	            itemVal = "F0" + string(i - inum);
	        }
	    }
		for(i = inum+10; i <= inum + 10; i++) {
	        if buttNum = i {
	            itemVal = "F" + string(i - inum);
	        }
	    }
		inum += 11;
	    for(i = inum; i <= inum+5; i++) {
	        if buttNum = i {
	            itemVal = "G0" + string(i + 1 - inum);
	        }
	    }
		inum += 6;
	    for(i = inum; i <= inum+8; i++) {
	        if buttNum = i {
	            itemVal = "H0" + string(i + 1 - inum);
	        }
	    }
	    for(i = inum+9; i <= inum+16; i++) {
	        if buttNum = i {
	            itemVal = "H" + string(i + 1 - inum);
	        }
	    }
		inum += 17;
		for(i = inum; i <= inum+8; i++) {
	        if buttNum = i {
	            itemVal = "I0" + string(i + 1 - inum);
	        }
	    }
	    for(i = inum+9; i <= inum+35; i++) {
	        if buttNum = i {
	            itemVal = "I" + string(i + 1 - inum);
	        }
	    }
		inum += 36;
	    for(i = inum; i <= inum+7; i++) {
	        if buttNum = i {
	            itemVal = "J0" + string(i + 1 - inum);
	        }
	    }
		inum += 8;
	    for(i = inum; i <= inum+5; i++) {
	        if buttNum = i {
	            itemVal = "K0" + string(i + 3 - inum);
	        }
	    }
		inum += 6;
		for(i = inum; i <= inum+4; i++) {
	        if buttNum = i {
	            itemVal = "L0" + string(i + 1 - inum);
	        }
	    }
		inum += 5;
	    for(i = inum; i <= inum+8; i++) {
	        if buttNum = i {
	            itemVal = "M0" + string(i + 1 - inum);
	        }
	    }
	    for(i = inum+9; i <= inum+24; i++) {
	        if buttNum = i {
	            itemVal = "M" + string(i + 1 - inum);
	        }
	    }
		inum += 25;
		for(i = inum; i <= inum+5; i++) {
	        if buttNum = i {
	            itemVal = "N0" + string(i + 1 - inum);
	        }
	    }
		inum += 6;
		
		for(i = inum; i <= inum+5; i++) {
	        if buttNum = i {
	            itemVal = "OA0" + string(i + 1 - inum);
	        }
	    }
		inum += 6;
		for(i = inum; i <= inum+5; i++) {
	        if buttNum = i {
	            itemVal = "OB0" + string(i + 1 - inum);
	        }
	    }
		inum += 6;
		for(i = inum; i <= inum+5; i++) {
	        if buttNum = i {
	            itemVal = "OC0" + string(i + 1 - inum);
	        }
	    }
		inum += 6;
		
		for(i = inum; i <= inum+8; i++) {
	        if buttNum = i {
	            itemVal = "P0" + string(i + 1 - inum);
	        }
	    }
		inum += 9;
	    for(i = inum; i <= inum+3; i++) {
	        if buttNum = i {
	            itemVal = "Q0" + string(i + 1 - inum);
	        }
	    }
		inum += 4;
	    for(i = inum; i <= inum+5; i++) {
	        if buttNum = i {
	            itemVal = "R0" + string(i + 1 - inum);
	        }
	    }
		inum += 6;
		for(i = inum; i <= inum+2; i++) {
	        if buttNum = i {
	            itemVal = "S0" + string(i + 1 - inum);
	        }
	    }
		inum += 3;
		for(i = inum; i <= inum+2; i++) {
	        if buttNum = i {
	            itemVal = "T0" + string(i + 1 - inum);
	        }
	    }
		inum += 3;
		for(i = inum; i <= inum+8; i++) {
	        if buttNum = i {
	            itemVal = "U0" + string(i + 1 - inum);
	        }
	    }
		/*for(i = inum+9; i <= inum+9; i++) {
	        if buttNum = i {
	            itemVal = "U" + string(i + 1 - inum);
	        }
	    } */
		inum += 9;
		for(i = inum; i <= inum+7; i++) {
	        if buttNum = i {
	            itemVal = "V0" + string(i + 1 - inum);
	        }
	    }
		inum += 8;
		for(i = inum; i <= inum+4; i++) {
	        if buttNum = i {
	            itemVal = "W0" + string(i + 1 - inum);
	        }
	    }
		inum += 5;
		
		for(i = inum; i <= inum+5; i++) {
	        if buttNum = i {
	            itemVal = "XA0" + string(i + 1 - inum);
	        }
	    }
		inum += 6;
		for(i = inum; i <= inum+5; i++) {
	        if buttNum = i {
	            itemVal = "XB0" + string(i + 1 - inum);
	        }
	    }
		inum += 6;
		for(i = inum; i <= inum+5; i++) {
	        if buttNum = i {
	            itemVal = "XC0" + string(i + 1 - inum);
	        }
	    }
		inum += 6;
	}

	if global.recollectCategory = "Bosses" {
	    for(i = 1; i <= 9; i++) {
	        if buttNum = i {
	            itemVal = "Boss 00" + string(i);
	        }
	    }
	    for(i = 10; i <= 99; i++) {
	        if buttNum = i {
	            itemVal = "Boss 0" + string(i);
	        }
	    }
	}
	
	if global.recollectCategory = "State" {
	    for(i = 1; i <= 9; i++) {
	        if buttNum = i {
	            itemVal = "State 0" + string(i);
	        }
	    }
	    for(i = 10; i <= 11; i++) {
	        if buttNum = i {
	            itemVal = "State " + string(i);
	        }
	    }
	}
	
	if global.recollectCategory = "Information" {
	    for(i = 1; i <= 9; i++) {
	        if buttNum = i {
	            itemVal = "Tutorial 0" + string(i);
	        }
	    }
	    for(i = 10; i <= 40; i++) {
	        if buttNum = i {
	            itemVal = "Tutorial " + string(i);
	        }
	    }
	}



}
