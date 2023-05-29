// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Item_Click(linger = false){
	
	var recollectionCount = 0;
	
	if shop != 0 {
		bought = 0;
	} else {
		bought = 1;	
	}
	if shop > 0 and shop != 3 {
	    //if global.currentchapter = 1
	    if flashcost != 0
	    if global.soulflash >= flashcost {
	        global.soulflash -= flashcost;
	        bought = 1;
	    }
	}
	if bought = 0 {
	    exit;
	}
	
	
	scr_Sound_Effect(snd_Item_Get);

	var sDir = random(360);

	repeat(8) {
		with instance_create(x,y,obj_Item_Essence) {
			direction = sDir;
			speed = 15;
		}
		sDir += 45;
	}

	if weapon = 1 { 
		
		scr_State_Weapon_Progress(itemVal, 1);
		
	    itemindex = itemVal;
		global.weaponTaken = itemID;
		global.orbit[itemOrbit] += 1;
		with(obj_Item_Parent) {
			if global.orbit[itemOrbit] >= 1 and itemID != global.weaponTaken {
				Floor_Layout_Control.Flash[global.currentroom,itemData] = 0;
				instance_destroy();	
			}
		}
		global.orbit[itemOrbit] -= 1;
	    scr_Weapon_Pickup();
	}

	var recoGroup = string_letters(itemVal);
	var itemNum = string_digits(itemVal);
	if recoGroup = "A" {
	    global.recollectionA[itemNum]++;
		global.A[itemNum]++;
		recollectionCount = global.recollectionA[string_digits(itemVal)];
	}
	if recoGroup = "B" {
	    global.recollectionB[string_digits(itemVal)]++;
		global.B[itemNum]++;
		recollectionCount = global.recollectionB[string_digits(itemVal)];
	}
	if recoGroup = "C" {
	    global.recollectionC[string_digits(itemVal)]++;
		global.C[itemNum]++;
		recollectionCount = global.recollectionC[string_digits(itemVal)];
	}
	if recoGroup = "D" {
	    global.recollectionD[string_digits(itemVal)]++;
		global.D[itemNum]++;
		recollectionCount = global.recollectionD[string_digits(itemVal)];
	}
	if recoGroup = "E" {
	    global.recollectionE[string_digits(itemVal)]++;
		global.E[itemNum]++;
		recollectionCount = global.recollectionE[string_digits(itemVal)];
	}
	if recoGroup = "F" {
	    global.recollectionF[string_digits(itemVal)]++;
		global.F[itemNum]++;
		recollectionCount = global.recollectionF[string_digits(itemVal)];
	}
	if recoGroup = "G" {
	    global.recollectionG[string_digits(itemVal)]++;
		global.G[itemNum]++;
		recollectionCount = global.recollectionG[string_digits(itemVal)];
	}
	if recoGroup = "H" {
	    global.recollectionH[string_digits(itemVal)]++;
		global.H[itemNum]++;
		recollectionCount = global.recollectionH[string_digits(itemVal)];
	}
	if recoGroup = "I" {
	    global.recollectionI[string_digits(itemVal)]++;
		global.I[itemNum]++;
		recollectionCount = global.recollectionI[string_digits(itemVal)];
	}
	if recoGroup = "J" {
	    global.recollectionJ[string_digits(itemVal)]++;
		global.J[itemNum]++;
		recollectionCount = global.recollectionJ[string_digits(itemVal)];
	}
	if recoGroup = "K" {
	    global.recollectionK[string_digits(itemVal)]++;
		global.K[itemNum]++;
		recollectionCount = global.recollectionK[string_digits(itemVal)];
	}
	if recoGroup = "L" {
	    global.recollectionL[string_digits(itemVal)]++;
		global.L[itemNum]++;
		recollectionCount = global.recollectionL[string_digits(itemVal)];
	}
	if recoGroup = "M" {
	    global.recollectionM[string_digits(itemVal)]++;
		global.M[itemNum]++;
		recollectionCount = global.recollectionM[string_digits(itemVal)];
	}
	if recoGroup = "N" {
	    global.recollectionN[string_digits(itemVal)]++;
		global.N[itemNum]++;
		recollectionCount = global.recollectionN[string_digits(itemVal)];
	}
	if recoGroup = "P" {
	    global.recollectionP[string_digits(itemVal)]++;
		global.P[itemNum]++;
		recollectionCount = global.recollectionP[string_digits(itemVal)];
	}
	if recoGroup = "OA" {
	    global.recollectionOA[string_digits(itemVal)]++;
		global.OA[itemNum]++;
		recollectionCount = global.recollectionOA[string_digits(itemVal)];
	}
	if recoGroup = "OB" {
	    global.recollectionOB[string_digits(itemVal)]++;
		global.OB[itemNum]++;
		recollectionCount = global.recollectionOB[string_digits(itemVal)];
	}
	if recoGroup = "OC" {
	    global.recollectionOC[string_digits(itemVal)]++;
		global.OC[itemNum]++;
		recollectionCount = global.recollectionOC[string_digits(itemVal)];
	}
	if recoGroup = "R" {
	    global.recollectionR[string_digits(itemVal)]++;
		global.R[itemNum]++;
		recollectionCount = global.recollectionR[string_digits(itemVal)];
	}
	if recoGroup = "S" {
	    global.recollectionS[string_digits(itemVal)]++;
		global.S[itemNum]++;
		recollectionCount = global.recollectionS[string_digits(itemVal)];
	}
	if recoGroup = "T" {
	    global.recollectionT[string_digits(itemVal)]++;
		global.T[itemNum]++;
		recollectionCount = global.recollectionT[string_digits(itemVal)];
	}
	if recoGroup = "U" {
	    global.recollectionU[string_digits(itemVal)]++;
		global.U[itemNum]++;
		recollectionCount = global.recollectionU[string_digits(itemVal)];
	}
	if recoGroup = "V" {
	    global.recollectionV[string_digits(itemVal)]++;
		global.V[itemNum]++;
		recollectionCount = global.recollectionV[string_digits(itemVal)];
	}
	if recoGroup = "W" {
	    global.recollectionW[string_digits(itemVal)]++;
		global.W[itemNum]++;
		recollectionCount = global.recollectionW[string_digits(itemVal)];
	}
	if recoGroup = "XA" {
	    global.recollectionXA[string_digits(itemVal)]++;
		global.XA[itemNum]++;
		recollectionCount = global.recollectionXA[string_digits(itemVal)];
	}
	if recoGroup = "XB" {
	    global.recollectionXB[string_digits(itemVal)]++;
		global.XB[itemNum]++;
		recollectionCount = global.recollectionXB[string_digits(itemVal)];
	}
	if recoGroup = "XC" {
	    global.recollectionXC[string_digits(itemVal)]++;
		global.XC[itemNum]++;
		recollectionCount = global.recollectionXC[string_digits(itemVal)];
	}
	
	scr_Hard_Coded_Item_Stats(itemVal);
	
	if weapon = 0 {
		scr_Item_State_Credit_Add(itemVal);
	}
	
	scr_State_Form_Unlock();
	
	scr_Channel_Boss_Reroll();
	
	instance_destroy();
	
	if recoGroup = "I" || itemVal = "A00" || itemVal = "B00" || itemVal = "C00" || itemVal = "D00" || itemVal = "E00" || itemVal = "F00" {
		ds_list_delete(global.IItemPool, ds_list_find_index(global.IItemPool, itemVal));
	}
	
	scr_Memory_Info_Bank();
	
	if linger = true || recollectionCount <= 1 {
		scr_Item_Recollection_Cloud(120);
	}
}
