function scr_Hard_Coded_Item_Stats(itemVal, items_to_add = 1, reload = false) {
	
	var recoGroup = string_letters(itemVal);

	if itemVal = "A00" {
		if !reload {
		    global.soulstrength += 5;
		    obj_Soul_Parent.sstrength += 5;
		    //global.strFields++;
		}
	}
	if itemVal = "A01" {
	    global.soulpoweradd += 2;
	    obj_Soul_Parent.spoweradd += 2;
	}
	if itemVal = "A02" {
	    global.soularmourpierce += 6;
	    obj_Soul_Parent.sarmourpierce += 6;
	}
	if itemVal = "A03" {
	    global.soulpowerfactor += 1.25;
	    obj_Soul_Parent.spowerfactor += 1.25;
	}
	if itemVal = "A04" {
	    global.soulshotpierce += 1;
	    obj_Soul_Parent.sshotpierce += 1;
	}
	if itemVal = "A05" {
	}
	if itemVal = "A06" {
	    global.soulshotknockback += 5;
	    obj_Soul_Parent.sshotknockback += 5;
	    global.soulshotspeed += 2;
	    obj_Soul_Parent.sshotspeed += 2;
	}
	if itemVal = "A07" {
	}
	if itemVal = "A08" {
	    global.soulpowerfactor += 2.5;
	    obj_Soul_Parent.spowerfactor += 2.5;
	    global.soulshotlifefactor = ((global.soulshotlifefactor + 10) / 1.25) - 10;
	    obj_Soul_Parent.sshotlifefactor = ((obj_Soul_Parent.sshotlifefactor + 10) / 1.25) - 10;
	    //global.soulshotspeed += 1;
	    //obj_Soul_Parent.sshotspeed += 1;
	    //global.A[8]++;
	}
	if itemVal = "A09" {
	    global.soulshotsizefactor += 0.25;
	    obj_Soul_Parent.sshotsizefactor += 0.25;
	    global.soulpowerfactor += 0.75;
	    obj_Soul_Parent.spowerfactor += 0.75;
	    //global.A[9]++;
	}
	if itemVal = "A10" {
	    global.soulcritadd += 1;
	    obj_Soul_Parent.scritadd += 1;
	    global.soulcritaddchance += 12.5;
	    obj_Soul_Parent.scritaddchance += 12.5;
		//global.A[10]++;
	}
	if itemVal = "A11" {
	    global.soulcontactdamageadd += 25;
	    obj_Soul_Parent.scontactdamageadd += 25;
	    //global.A[11]++;
	}
	if itemVal = "A12" {
	    //global.A[12]++;
	}
	if itemVal = "A13" { // Ambition
	    //global.A[13]++;
	}
	if itemVal = "A14" {
	    //global.A[14]++;
	}

	if itemVal = "B00" {
		if !reload {
		    global.soulvitality += 5;
		    obj_Soul_Parent.svitality += 5;
		}
	    //global.vitFields++;
	}
	if itemVal = "B01" {
	    global.soulhpadd += 5;
	    obj_Soul_Parent.shpadd += 5;
	    //global.B[1]++;
	}
	if itemVal = "B02" {
	    global.souldefenseadd += 2;
	    obj_Soul_Parent.sdefenseadd += 2;
	    //global.B[2]++;
	}
	if itemVal = "B03" {
	    //global.B[3]++;
	}
	if itemVal = "B04" {
	    //global.B[4]++;
	}
	if itemVal = "B05" {
	    //global.B[5]++;
	}
	if itemVal = "B06" {
	    //global.B[6]++;
	    //global.soulheartboost += 0.25;
	    //obj_Soul_Parent.sheartboost += 0.25;
		if !reload {
			global.B06HeartConversions += 3;
		}
	}
	if itemVal = "B07" {
	    //global.B[7]++;
		//global.scrubprogress += 0.5;
	}
	if itemVal = "B08" {
	    //global.B[8]++;
	    global.soulhealthregenadd += 3;
	    obj_Soul_Parent.shealthregenadd += 3;
	}
	if itemVal = "B09" {
	    //global.B[9]++;
		//global.scrubprogress += 0.5;
	}
	if itemVal = "B10" {
	    //global.B[10]++;
	}
	if itemVal = "B11" {
	    //global.B[11]++;
	}
	if itemVal = "B12" {
	    //global.B[12]++;
	}
	if itemVal = "B13" {
	    global.soulhpadd += 3;
	    obj_Soul_Parent.shpadd += 3;
	    global.soulhealthregenadd += 3;
	    obj_Soul_Parent.shealthregenadd += 3;
	    //global.B[13]++;
	}
	if itemVal = "B14" {
	    //global.B[14]++;
	}

	if itemVal = "C00" {
		if !reload {
			global.soulessence += 5;
			obj_Soul_Parent.sessence += 5;
		}
		//global.essFields++;
	}
	if itemVal = "C01" {
	    //global.soulenergyconservationfactor += 0.15;
	    //obj_Soul_Parent.senergyconservationfactor += 0.15;
	    //global.C[1]++;
	}
	if itemVal = "C02" {
	    global.soulmaxenergy += 50;
	    obj_Soul_Parent.smaxenergy += 50;
	    //global.C[2]++;
	}
	if itemVal = "C03" {
	    global.soulenergyregenfactor += 2;
	    obj_Soul_Parent.senergyregenfactor += 2;
	    //global.C[3]++;
	}
	if itemVal = "C04" {
	    global.soulenergyconservation += 2;
	    obj_Soul_Parent.senergyconservation += 2;
	    //global.C[4]++;
	}
	if itemVal = "C05" {
	    //global.C[5]++;
	}
	if itemVal = "C06" {
	    //global.C[6]++;
	}
	if itemVal = "C07" {
	    //global.C[7]++;
	}
	if itemVal = "C08" {
	    //global.C[8]++;
	}
	if itemVal = "C09" {
	    //global.C[9]++;
	}
	if itemVal = "C10" {
	    //global.C[10]++;
	}
	if itemVal = "C11" {
	    //global.C[11]++;
	    global.soulenergyregenfactor += 1;
	    obj_Soul_Parent.senergyregenfactor += 1;
	}
	if itemVal = "C12" {
	    //global.C[12]++;
	}
	if itemVal = "C13" {
	    global.soulmaxenergy += 30;
	    obj_Soul_Parent.smaxenergy += 30;
	    global.soulenergyregenfactor += 1;
	    obj_Soul_Parent.senergyregenfactor += 1;
	    //global.C[13]++;
	}
	if itemVal = "C14" {
	    //global.C[14]++;
	}

	if itemVal = "D00" {
		if !reload {
			global.souldexterity += 5;
			obj_Soul_Parent.sdexterity += 5;
		}
		//global.dexFields++;
	}
	if itemVal = "D01" {
	    global.soulmovementfactor += 3;
	    obj_Soul_Parent.smovementfactor += 3;
	    //global.D[1]++;
	}
	if itemVal = "D02" {
	    global.souldelayconservationfactor += 0.2;
	    obj_Soul_Parent.sdelayconservationfactor += 0.2;
	    //global.D[2]++;
	}
	if itemVal = "D03" {
	    global.soulshotspeed += 4;
	    obj_Soul_Parent.sshotspeed += 4;
		global.souldelayconservationfactor += 0.1;
	    obj_Soul_Parent.sdelayconservationfactor += 0.1;
	    //global.D[3]++;
	}
	if itemVal = "D04" {
	    global.souldelayconservation += 2;
	    obj_Soul_Parent.sdelayconservation += 2;
	    //global.D[4]++;
	}
	if itemVal = "D05" {
	    //global.D[5]++;
		//global.snakeprogress += 0.5;
	}
	if itemVal = "D06" {
	    //global.D[6]++;
	}
	if itemVal = "D07" {
	    //global.D[7]++;
	}
	if itemVal = "D08" {
	    global.souldelayconservationfactor += 0.35;
	    obj_Soul_Parent.sdelayconservationfactor += 0.35;
	    global.soulaccuracy = global.soulaccuracy * 0.7;
	    obj_Soul_Parent.saccuracy = obj_Soul_Parent.saccuracy * 0.7;
	    //global.D[8]++;
	}
	if itemVal = "D09" {
	    global.soulshotamountaddchance += 12.5;
	    obj_Soul_Parent.sshotamountaddchance += 12.5;
	    //global.D[9]++;
	}
	if itemVal = "D10" {
	    //global.soulenergyregenfactor -= 2;
	    //obj_Soul_Parent.senergyregenfactor -= 2;
	    //global.D[10]++;
	}
	if itemVal = "D11" {
	    //global.D[11]++;
	}
	if itemVal = "D12" {
	    //global.D[12]++;
	}
	if itemVal = "D13" {
	    global.soulmovementfactor += 1.5;
	    obj_Soul_Parent.smovementfactor += 1.5;
	    global.souldelayconservationfactor += 0.1;
	    obj_Soul_Parent.sdelayconservationfactor += 0.1;
	    //global.D[13]++;
	}
	if itemVal = "D14" {
	    //global.D[14]++;
	}

	if itemVal = "E00" {
		if !reload {
			global.soulperception += 5;
			obj_Soul_Parent.sperception += 5;
		}
		//global.perFields++;
	}
	if itemVal = "E01" {
	    //global.soulsize -= 1;
	    //obj_Soul_Parent.ssize -= 1;
		global.soulenergyconservationfactor += 0.2;
	    obj_Soul_Parent.senergyconservationfactor += 0.2;
	    //global.E[1]++;
	}
	if itemVal = "E02" {
	    global.teleportenergyconservation += 10;
	    obj_Soul_Parent.tenergyconservation += 10;
		global.teleportdelayconservationfactor += 0.25;
	    obj_Soul_Parent.tdelayconservationfactor += 0.25;
	    //global.E[2]++;
	}
	if itemVal = "E03" {
	    global.soulaccuracy += min(global.soulaccuracy, 1);
	    obj_Soul_Parent.saccuracy += min(obj_Soul_Parent.saccuracy,1);
	    global.soulshotlifefactor += 2;
	    obj_Soul_Parent.sshotlifefactor += 2;
	    //global.E[3]++;
	}
	if itemVal = "E04" {
	    global.teleportenergyconservationfactor += 0.2;
	    obj_Soul_Parent.tenergyconservationfactor += 0.2;
		global.teleportboost += 0.3;
	    //global.E[4]++;
	}
	if itemVal = "E05" {
	    global.soulshotlifefactor += 5;
	    obj_Soul_Parent.sshotlifefactor += 5;
	    //global.E[5]++;
	}
	if itemVal = "E06" {
	    //global.E[6]++;
		//global.snakeprogress += 0.5;
	}
	if itemVal = "E07" {
	    //global.E[7]++;
		//global.snakeprogress += 0.5;
	}
	if itemVal = "E08" {
	    //global.E[8]++;
	}
	if itemVal = "E09" {
	    //global.E[9]++;
	}
	if itemVal = "E10" {
	    //global.E[10]++;
		
	}
	if itemVal = "E11" {
	    //global.E[11]++;
	}
	if itemVal = "E12" {
	    global.teleportenergyconservationfactor += 0.2;
	    obj_Soul_Parent.tenergyconservationfactor += 0.2;
		global.soulenergyconservationfactor += 0.15;
	    obj_Soul_Parent.senergyconservationfactor += 0.15;
	    //global.E[12]++;
	}
	if itemVal = "E13" {
	    //global.E[13]++;
		//global.beastprogress += 0.5;
	}
	if itemVal = "E14" {
	    //global.E[14]++;
		//global.snakeprogress += 0.5;
	}
	
	if itemVal = "F00" {
		if !reload {
			global.soulstate += 5;
			obj_Soul_Parent.sstate += 5;
		}
		global.staFields++;
	}
	if itemVal = "F01" {
	    //global.F[1]++;
		global.soulstategainfactor += 0.25;
	}
	if itemVal = "F02" {
	    //global.F[2]++;
		global.soulstatedrainslow += 0.25;
	}
	if itemVal = "F03" {
	    //global.F[3]++;
	}
	if itemVal = "F04" {
	    //global.F[4]++;
		global.soulstateformboost += 0.2;
	}
	if itemVal = "F05" {
	    //global.F[5]++;
	}
	if itemVal = "F06" {
	    //global.F[6]++;
	}
	if itemVal = "F07" {
	    //global.F[7]++;
	}
	if itemVal = "F08" {
	    //global.F[8]++;
	}
	if itemVal = "F09" {
	    //global.F[9]++;
		global.soulstateteleportfactor += 0.4;
		global.teleportboost += 0.25;
	}
	if itemVal = "F10" {
	    //global.F[10]++;
		global.soulstateformboost += 0.5;
		global.soulstatedrainrate -= 0.2;
	}
	
	

	if itemVal = "G01" {
	    //global.G[1]++;
	}
	if itemVal = "G02" {
	    //global.G[2]++;
	}
	if itemVal = "G03" {
	    //global.G[3]++;
	}
	if itemVal = "G04" {
	    //global.G[4]++;
	}
	if itemVal = "G05" {
	    //global.G[5]++;
	}
	if itemVal = "G06" {
	    //global.G[6]++;
	}
	
	if !reload {

		if itemVal = "H01" {
			scr_Heart_Item_Pickup_Setup(1, 20);
		    //Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 1
		    //global.totalhearts++;
		    //global.H[1]++;
		}
		if itemVal = "H02" {
			scr_Heart_Item_Pickup_Setup(2, 20);
		    //Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 2;
		    //global.totalhearts++;
		    //global.H[2]++;
		}
		if itemVal = "H03" {
			scr_Heart_Item_Pickup_Setup(3, 20);
		    //Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 3;
		    //global.totalhearts++;
		    //global.H[3]++;
		}
		if itemVal = "H04" {
			scr_Heart_Item_Pickup_Setup(4, 40);
		    //Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 4;
		    //global.totalhearts++;
		    //global.H[4]++;
		}
		if itemVal = "H05" {
		    scr_Heart_Item_Pickup_Setup(5, 20);
		}
		if itemVal = "H06" {
		    scr_Heart_Item_Pickup_Setup(6, 10);
		}
		if itemVal = "H07" {
			/*
		    Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 7;
			var heartHealth = ((60 * ((10 + obj_Soul_Parent.shpfactor) / 10)) + obj_Soul_Parent.shpadd + ((global.soulvitality + global.soulvitalityTemp) / 4));
		    global.soulhealth = heartHealth;
		    global.soulhealthmax = heartHealth;
		    obj_Soul_Parent.shealth = heartHealth;
		    obj_Soul_Parent.shealthmax = heartHealth;
		    Soul_Hearts_Control.heart[global.currentheart + 1, 3] = heartHealth;
		    Soul_Hearts_Control.heart[global.currentheart + 1, 4] = heartHealth;
		    global.totalhearts++;
			*/
		    //global.H[7]++;
			scr_Heart_Item_Pickup_Setup(7, 60);
			global.glasstime = 0;
		}
		if itemVal = "H08" {
		    scr_Heart_Item_Pickup_Setup(8, 20);
		}
		if itemVal = "H09" {
		    scr_Heart_Item_Pickup_Setup(9, 20);
		}
		if itemVal = "H10" {
		    scr_Heart_Item_Pickup_Setup(10, 20);
		}
		if itemVal = "H11" {
		    scr_Heart_Item_Pickup_Setup(11, 20);
		}
		if itemVal = "H12" {
		    scr_Heart_Item_Pickup_Setup(12, 20);
		}
		if itemVal = "H13" {
		    scr_Heart_Item_Pickup_Setup(13, 20);
		}
		if itemVal = "H14" {
		    scr_Heart_Item_Pickup_Setup(14, 25);
		}
		if itemVal = "H15" {
		    scr_Heart_Item_Pickup_Setup(15, 20);
		}
		if itemVal = "H16" {
		    scr_Heart_Item_Pickup_Setup(16, 20);
		}
		if itemVal = "H17" {
		    scr_Heart_Item_Pickup_Setup(17, 20);
		}
	
		if recoGroup = "I" and !reload {
		
			var emNum = string_digits(itemVal)
			var spirNum = 1 + ((emNum - 1) mod 6);
			var upAmt = 2;
		
			if spirNum = 2 {
				upAmt = 3
			}
			if spirNum = 3 {
				upAmt = 4;	
			}
			if spirNum = 4 {
				upAmt = 7;
			}
			if spirNum = 5 {
				upAmt = 9;	
			}
			if spirNum = 6 {
				upAmt = 11;	
			}
		
			if emNum > 0 and emNum <= 6 {
				global.soulstrength += upAmt;
				obj_Soul_Parent.sstrength += upAmt;
			}
			if emNum > 6 and emNum <= 12 {
				global.soulvitality += upAmt;
				obj_Soul_Parent.svitality += upAmt;
			}
			if emNum > 12 and emNum <= 18 {
				global.soulessence += upAmt;
				obj_Soul_Parent.sessence += upAmt;
			}
			if emNum > 18 and emNum <= 24 {
				global.souldexterity += upAmt;
				obj_Soul_Parent.sdexterity += upAmt;
			}
			if emNum > 24 and emNum <= 30 {
				global.soulperception += upAmt;
				obj_Soul_Parent.sperception += upAmt;
			}
			if emNum > 30 and emNum <= 36 {
				global.soulstate += upAmt;
				obj_Soul_Parent.sstate += upAmt;
			}
		
			if spirNum = 1 {
				global.soulhope += 4;
			}
			if spirNum = 2 {
				global.soulbliss += 4;
			}
			if spirNum = 3 {
				global.soulvanity += 4;
			}
			if spirNum = 4 {
				global.soulloathing += 4;
				scr_Spirit_Add_Commands();
			}
			if spirNum = 5 {
				global.soulparanoia += 4;
			}
			if spirNum = 6 {
				global.souldespair += 4;
				scr_Spirit_Add_Commands();
			}
		
		}
	
	

		if itemVal = "J01" {
		    Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 1;
		    global.totalhearts++;
		    global.soulstrength += 3;
		    obj_Soul_Parent.sstrength += 3;
		    //global.J[1]++;
		}
		if itemVal = "J02" {
		    Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 1;
		    global.totalhearts++;
		    global.soulvitality += 3;
		    obj_Soul_Parent.svitality += 3;
		    //global.J[2]++;
		}
		if itemVal = "J03" {
		    Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 1;
		    global.totalhearts++;
		    global.soulessence += 3;
		    obj_Soul_Parent.sessence += 3;
		    //global.J[3]++;
		}
		if itemVal = "J04" {
		    Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 1;
		    global.totalhearts++;
		    global.souldexterity += 3;
		    obj_Soul_Parent.sdexterity += 3;
		    //global.J[4]++;
		}
		if itemVal = "J05" {
		    Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 1;
		    global.totalhearts++;
		    global.soulperception += 3;
		    obj_Soul_Parent.sperception += 3;
		    //global.J[5]++;
		}
		if itemVal = "J06" {
		    Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 1;
		    global.totalhearts++;
		    global.soulstate += 4;
		    obj_Soul_Parent.sstate += 4;
		    //global.J[6]++;
		}
		if itemVal = "J07" {
		    Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 1;
		    global.totalhearts++;
		    //global.J[7]++;
		}
		if itemVal = "J08" {
		    Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 1;
		    global.totalhearts++;
		    //global.J[8]++;
		}

		if itemVal = "K03" {
		    global.soulstrength += 2 * global.currentchapter;
		    obj_Soul_Parent.sstrength += 2 * global.currentchapter;
			repeat(global.currentchapter) {
				scr_Stat_Up_Indication(1, false)	
			}
		    //global.K[3]++;
		}
		if itemVal = "K04" {
		    global.soulvitality += 2 * global.currentchapter;
		    obj_Soul_Parent.svitality += 2 * global.currentchapter;
			repeat(global.currentchapter) {
				scr_Stat_Up_Indication(2, false)	
			}
		    //global.K[4]++;
		}
		if itemVal = "K05" {
		    global.soulessence += 2 * global.currentchapter;
		    obj_Soul_Parent.sessence += 2 * global.currentchapter;
			repeat(global.currentchapter) {
				scr_Stat_Up_Indication(3, false)	
			}
		    //global.K[5]++;
		}
		if itemVal = "K06" {
		    global.souldexterity += 2 * global.currentchapter;
		    obj_Soul_Parent.sdexterity += 2 * global.currentchapter;
			repeat(global.currentchapter) {
				scr_Stat_Up_Indication(4, false)	
			}
		    //global.K[6]++;
		}
		if itemVal = "K07" {
		    global.soulperception += 2 * global.currentchapter;
		    obj_Soul_Parent.sperception += 2 * global.currentchapter;
			repeat(global.currentchapter) {
				scr_Stat_Up_Indication(5, false)	
			}
		    //global.K[7]++;
		}
		if itemVal = "K08" {
		    global.soulstate += 2 * global.currentchapter;
		    obj_Soul_Parent.sstate += 2 * global.currentchapter;
			repeat(global.currentchapter) {
				scr_Stat_Up_Indication(6, false)	
			}
		    //global.K[8]++;
		}
	
	}


	if itemVal = "L01" {
		/*
		global.soulpoweradd += 1;
	    obj_Soul_Parent.spoweradd += 1;
		global.soulenergyconservation += 1;
	    obj_Soul_Parent.senergyconservation += 1;
		global.soulmaxenergy += 20;
	    obj_Soul_Parent.smaxenergy += 20;
		*/
	    //global.L[1]++;
	}

	if itemVal = "L02" {
		global.weaponslots++;
		if global.weaponslots > 4 {
			global.weaponslots = 4;	
		}
	    //global.L[2]++;
	}

	if itemVal = "L03" {
		if !reload {
			global.Weap[global.currentweapon]++;
		}
	}

	if itemVal = "L04" {
	    //global.L[4]++;
	}
	
	if itemVal = "L05" {
	    //global.L[5]++;
		
		/*if !reload {
			global.snakeprogress += 0.5;
			global.beastprogress += 0.5;
			global.spikeprogress += 0.5;
			global.scrubprogress += 0.5;
			global.castingprogress += 0.5;
			global.mechprogress += 0.5;
			global.bleedingprogress += 0.5;
		} */
		
	}
	
	if itemVal = "N01" {
	    //global.N[1] += 1;
		global.extraitems += 0.5;
	}
	if itemVal = "N02" {
	    //global.N[2] += 1;
	}
	if itemVal = "N03" {
		//weapon = 1;
	    //global.N[3] += 1;
		/*
		itemindex = 701;
		global.weaponTaken = itemID;
		global.orbit[itemOrbit] += 1;
		with(obj_Item_Parent) {
			if global.orbit[itemOrbit] >= 1 and itemID != global.weaponTaken {
				Floor_Layout_Control.Flash[global.currentroom,itemData] = 0;
				instance_destroy();	
			}
		}
		global.orbit[itemOrbit] -= 1;
	    scr_Weapon_Pickup(); */
	}
	if itemVal = "N04" {
	    //global.N[4] += 1;
		//global.mechprogress += 0.5;
	}

	if itemVal = "M01" {
	    //global.M[1] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M02" {
	    //global.M[2] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M03" {
	    //global.M[3] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M04" {
	    //global.M[4] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M05" {
	    //global.M[5] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M06" {
	    //global.M[6] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M07" {
	    //global.M[7] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M08" {
	    //global.M[8] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M09" {
	    //global.M[9] += 1;
		//global.spikeprogress++;
	}
	if itemVal = "M10" {
	    //global.M[10] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M11" {
	    //global.M[11] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M12" {
	    //global.M[12] += 1;
		//global.beastprogress += 0.5;
	}
	if itemVal = "M13" {
	    //global.M[13] += 1;
		//global.mechprogress += 0.5;
		//global.castingprogress++;
	}
	if itemVal = "M14" {
	    //global.M[14] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M15" {
	    //global.M[15] += 1;
		//global.snakeprogress += 0.5;
	}
	if itemVal = "M16" {
	    //global.M[16] += 1;
		//global.mechprogress += 1;
	}
	if itemVal = "M17" {
	    //global.M[17] += 1;
		//global.bleedingprogress++;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M18" {
	    //global.M[18] += 1;
		//global.beastprogress += 0.5;
	}
	if itemVal = "M19" {
	    //global.M[19] += 1;
		
		//global.castingprogress++;
	}
	if itemVal = "M20" {
	    //global.M[20] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M21" {
	    //global.M[21] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M22" {
	    //global.M[22] += 1;
		//global.mechprogress += 0.5;
	}
	if itemVal = "M23" {
	    //global.M[23] += 1;
		//global.scrubprogress += 0.5;
	}
	if itemVal = "M24" {
	    //global.M[24] += 1;
		//global.scrubprogress += 0.5;
	}
	
	if itemVal = "OA01" {
	    //global.OA[1]++;
		global.extraitems += 0.5;
		global.extrarecalls += 1;
	}
	if itemVal = "OA02" {
	    //global.OA[2]++;
	}
	if itemVal = "OA03" {
	    //global.OA[3]++;
	}
	if itemVal = "OA04" {
	    //global.OA[4]++;
	}
	if itemVal = "OA05" {
		if !reload {
			scr_OA05_Setup();
		}
	}
	
	if itemVal = "OB01" {
		//global.OB[1]++;
		global.soulhealthregenadd += 5;
		global.soulenergyregenfactor += 1.5;
	}
	if itemVal = "OB02" {
	    //global.OB[2]++;
		global.souldelayconservationfactor += 0.4;
	    obj_Soul_Parent.sdelayconservationfactor += 0.4;
		global.soulenergyconservation += 3;
	    obj_Soul_Parent.senergyconservation += 3;
	}
	if itemVal = "OB03" {
	    //global.OB[3]++;
	}
	if itemVal = "OB04" {
	    //global.OB[4]++;
		global.soulshotlifefactor += 2;
	    obj_Soul_Parent.sshotlifefactor += 2;
		global.soulshotspeed -= 1.5;
	    obj_Soul_Parent.sshotspeed -= 1.5;
	}
	if itemVal = "OC01" {
	    //global.OC[1]++;
		global.souldelayconservationfactor += 0.15;
	    obj_Soul_Parent.sdelayconservationfactor += 0.15;
		global.souldefenseadd += 1;
	    obj_Soul_Parent.sdefenseadd += 1;
		global.bossfireratefactor += 0.1;
		global.soulshotlifefactor -= 2.5;
	    obj_Soul_Parent.sshotlifefactor -= 2.5;
	    global.soulshotspeed += 1;
	    obj_Soul_Parent.sshotspeed += 1;
	}
	if itemVal = "OC02" {
	    //global.OC[2]++;
		if !reload {
			Soul_Hearts_Control.heart[global.currentheart + 1, 2] = 52;
		    global.totalhearts++;
		}
	}
	if itemVal = "OC03" {
	    //global.OC[3]++;
	}
	if itemVal = "OC04" {
	    //global.OC[4]++;
		global.soulpowerfactor += 2.5;
	    obj_Soul_Parent.spowerfactor += 2.5;
	}

	if itemVal = "P01" {
	    //global.P[1]++;
	}

	if itemVal = "P02" {
		//global.P[2]++;
		if !reload {
			global.soulstrength += 2;
			global.soulvitality += 2;
			global.soulessence += 2;
			global.souldexterity += 2;
			global.soulperception += 2;
			global.soulstate += 2;
		}
	}

	if itemVal = "P03" {
		//global.P[3]++;	
		if !reload {
			global.soulloathing += 4;
		}
	}

	if itemVal = "P04" {
		//global.P[4]++;
		if !reload {
			global.soulparanoia += 4;
		}
	}
	if itemVal = "P05" {
		//global.P[5]++;	
	}
	if itemVal = "P06" {
		//global.P[6]++;	
		//global.snakeprogress++;
	}
	if itemVal = "P07" {
		//global.P[7]++;	
	}
	if itemVal = "P08" {
		//global.P[8]++;	
	}

	if !reload {
		if itemVal = "R01" {
		    global.soulflash += 55;
		    global.souldespair += 5;
		    scr_Spirit_Add_Commands();
		    //global.R[1]++;
		}
		if itemVal = "R02" {
		    global.soulflash += 45;
		    global.soulparanoia += 5;
		    //global.R[2]++;
		}
		if itemVal = "R03" {
		    global.soulflash += 35;
		    global.soulloathing += 5;
		    scr_Spirit_Add_Commands();
		    //global.R[3]++;
		}
		if itemVal = "R04" {
		    global.soulflash += 20;
		    global.soulvanity += 5;
			scr_Spirit_Add_Commands();
		    //global.R[4]++;
		}
		if itemVal = "R05" {
		    global.soulflash += 15;
		    global.soulbliss += 5;
			scr_Spirit_Add_Commands();
		    //global.R[5]++;
		}
		if itemVal = "R06" {
		    global.soulflash += 10;
		    global.soulhope += 5;
			scr_Spirit_Add_Commands();
		    //global.R[6]++;
		}
	}

	if itemVal = "S01" {
	    //global.S[1]++;
		if !reload {
			global.soulparanoia += 2;
		}
		//global.spikeprogress++;
	}
	if itemVal = "S02" {
	    //global.S[2]++;
	}
	if itemVal = "S03" {
	    //global.S[3]++;
	}

	if itemVal = "T01" {
	    //global.T[1]++;
	}
	if itemVal = "T02" {
	    //global.T[2]++;
	}
	if itemVal = "T03" {
	    //global.T[3]++;
		//global.scrubprogress++;
	}

	if itemVal = "U01" {
	    //global.U[1]++;
	}
	if itemVal = "U02" {
	    //global.U[2]++;
	}
	if itemVal = "U03" {
	    //global.U[3]++;
	}
	if itemVal = "U04" {
	    //global.U[4]++;
	}
	if itemVal = "U05" {
	    //global.U[5]++;
		//global.snakeprogress += 0.5;
	}
	if itemVal = "U06" {
	    //global.U[6]++;
		global.souldelayconservationfactor += 0.75;
	    obj_Soul_Parent.sdelayconservationfactor += 0.75;
	    global.soulaccuracy = global.soulaccuracy * 0.8;
	    obj_Soul_Parent.saccuracy = obj_Soul_Parent.saccuracy * 0.8;
		global.soulpowerfactor -= 1.5;
	    obj_Soul_Parent.spowerfactor -= 1.5;
		global.soulenergyconservationfactor += 0.15;
	    obj_Soul_Parent.senergyconservationfactor += 0.15;
		global.soulshotsizefactor -= 0.1;
	    obj_Soul_Parent.sshotsizefactor -= 0.1;
	}
	if itemVal = "U07" {
		//global.U[7]++;	
		//global.beastprogress++;
	}
	if itemVal = "U08" {
		//global.U[8]++;	
	}
	if itemVal = "U09" {
		//global.U[9]++;	
	}
	if itemVal = "U10" {
		//global.U[10]++;	
	}



	if itemVal = "V01" {
		if !reload {
			global.soulstrength++;
			global.soulvitality++;
			global.soulessence++;
			global.souldexterity++;
			global.soulperception++;
			global.soulstate++;
	
			global.soulhope++;
			global.soulbliss++;
			global.soulvanity++;
		}
	    //global.V[1]++;
	}
	if itemVal = "V02" {
		if !reload {
			global.soulhope += 4;
		}
		//global.V[2]++;
	}
	if itemVal = "V03" {
		if !reload {
		    var tempV03 = global.V[3];
			global.V[3] = 1;
			repeat(global.currentchapter) {
				scr_V03();
			}
			global.V[3] = tempV03;
		}
		//global.V[3]++;
	}
	if itemVal = "V04" {
	    //global.V[4]++;
	}
	if itemVal = "V05" {
		if !reload {
			global.soulparanoia += 6;
			global.soulvanity += 2;
			scr_Stat_Up_Indication(9, false)
			scr_Stat_Up_Indication(11, false)
			scr_Stat_Up_Indication(11, false)
			scr_Stat_Up_Indication(11, false)
		}
	}
	if itemVal = "V06" {
	    //global.V[6]++;
	}
	if itemVal = "V07" {
	    //global.V[7]++;
	}
	if itemVal = "V08" {
	    //global.V[8]++;
	}


	if itemVal = "W01" {
	    //global.W[1]++;
	}
	if itemVal = "W02" {
	    //global.W[2]++;
	}
	if itemVal = "W03" {
	    //global.W[3]++;
	}
	if itemVal = "W04" {
	    //global.W[4]++;
	}
	if itemVal = "W05" {
	    //global.W[5]++;
	}
	
	if itemVal = "XA01" {
	    //global.XA[1]++;
		global.soulpowerfactor += 1;
	    obj_Soul_Parent.spowerfactor += 1;
		global.bossdamagefactor += 0.2;
		global.soulaccuracy = global.soulaccuracy * 0.7;
	    obj_Soul_Parent.saccuracy = obj_Soul_Parent.saccuracy * 0.7;
	}
	if itemVal = "XA02" {
	    //global.XA[2]++;
	}
	if itemVal = "XA03" {
	    //global.XA[3]++;
	}
	if itemVal = "XA04" {
	    //global.XA[4]++;
	}
	
	if itemVal = "XB01" {
		//global.XB[1]++;
		global.soulaccuracy = global.soulaccuracy * 0.6;
	    obj_Soul_Parent.saccuracy = obj_Soul_Parent.saccuracy * 0.6;
		global.souldelayconservationfactor += 0.15;
	    obj_Soul_Parent.sdelayconservationfactor += 0.15;
		global.bossaccuracyfactor -= 0.4;
		global.bossfireratefactor += 0.2;
	}
	if itemVal = "XB02" {
	    //global.XB[2]++;
	}
	if itemVal = "XB03" {
	    //global.XB[3]++;
	}
	if itemVal = "XB04" {
	    //global.XB[4]++;
	}

	if itemVal = "XC01" {
	    //global.XC[1]++;
		
		global.bossdamagefactor += 0.2;
		global.bossdifficultyadd += 2;
		global.gamedarknessadd+= 0.1;
		
		scr_Spirit_Add_Commands();
	}
	if itemVal = "XC02" {
	    //global.XC[2]++;
	}
	if itemVal = "XC03" {
	    //global.XC[3]++;
	}
	if itemVal = "XC04" {
	    //global.XC[4]++;
	}

}
