function scr_Save_Run() {
	if (file_exists("saverun.sav"))
	{
	file_delete("saverun.sav");
	}
	
	if global.totalhearts <= 0 {
		exit;	
	}
	
	var i = 0;
	var j = 0;
	
	for(i = 0; i <= 39; i++) {
		if !(sprite_exists(global.floor[i,4])) {
			exit;	
		}
	}

	ini_open("saverun.sav")

	ini_write_real("Run", "currentchapter", global.currentchapter);
	ini_write_real("Run", "currentroom", global.currentroom);
	ini_write_real("Run", "strFields", global.strFields);
	ini_write_real("Run", "vitFields", global.vitFields);
	ini_write_real("Run", "essFields", global.essFields);
	ini_write_real("Run", "dexFields", global.dexFields);
	ini_write_real("Run", "perFields", global.perFields);
	ini_write_real("Run", "staFields", global.staFields);
	ini_write_real("Run", "strFieldSpawn", global.strFieldSpawn);
	ini_write_real("Run", "vitFieldSpawn", global.vitFieldSpawn);
	ini_write_real("Run", "essFieldSpawn", global.essFieldSpawn);
	ini_write_real("Run", "dexFieldSpawn", global.dexFieldSpawn);
	ini_write_real("Run", "perFieldSpawn", global.perFieldSpawn);
	ini_write_real("Run", "staFieldSpawn", global.staFieldSpawn);
	
	ini_write_real("Run", "hopFieldSpawn", global.hopFieldSpawn);
	ini_write_real("Run", "blsFieldSpawn", global.blsFieldSpawn);
	ini_write_real("Run", "assFieldSpawn", global.assFieldSpawn);
	ini_write_real("Run", "loaFieldSpawn", global.loaFieldSpawn);
	ini_write_real("Run", "parFieldSpawn", global.parFieldSpawn);
	ini_write_real("Run", "desFieldSpawn", global.desFieldSpawn);
	
	ini_write_real("Run", "totalFieldSpawn", global.totalFieldSpawn);
	ini_write_real("Run", "emoteFieldSpawn", global.emoteFieldSpawn);

	ini_write_real("Run", "weaponslots", global.weaponslots);
	ini_write_real("Run", "soulstrength", global.soulstrength);
	ini_write_real("Run", "soulvitality", global.soulvitality);
	ini_write_real("Run", "soulessence", global.soulessence);
	ini_write_real("Run", "souldexterity", global.souldexterity);
	ini_write_real("Run", "soulperception", global.soulperception);
	ini_write_real("Run", "soulstate", global.soulstate);

	ini_write_real("Run", "souldespair", global.souldespair);
	ini_write_real("Run", "soulparanoia", global.soulparanoia);
	ini_write_real("Run", "soulloathing", global.soulloathing);
	ini_write_real("Run", "soulvanity", global.soulvanity);
	ini_write_real("Run", "soulbliss", global.soulbliss);
	ini_write_real("Run", "soulhope", global.soulhope);

	ini_write_real("Run", "soulflash", global.soulflash);
	ini_write_real("Run", "soulfeel", global.soulfeel);
	ini_write_real("Run", "souldream", global.souldream);
	ini_write_real("Run", "soulnightmare", global.soulnightmare);
	ini_write_real("Run", "chaptertime", global.chaptertime);
	ini_write_real("Run", "glasstime", global.glasstime);

	ini_write_real("Run", "totalhearts", global.totalhearts);
	ini_write_real("Run", "spiritRoom", global.spiritRoom);
	ini_write_real("Run", "evilSpiritRoom", global.evilSpiritRoom);
	
	ini_write_real("Run", "soulstatecharge", global.soulstatecharge);
	ini_write_string("Run", "soultransformedstate", global.soultransformedstate);
	ini_write_string("Run", "currentstate", global.currentstate);
	
	ini_write_real("Run", "maxrooms", global.maxRooms);
	ini_write_real("Run", "extrarooms", global.extraRooms);
	
	ini_write_real("Run", "snakeprogress", global.snakeprogress);
	ini_write_real("Run", "beastprogress", global.beastprogress);
	ini_write_real("Run", "mechprogress", global.mechprogress);
	ini_write_real("Run", "scrubprogress", global.scrubprogress);
	ini_write_real("Run", "dragonprogress", global.dragonprogress);
	ini_write_real("Run", "spikeprogress", global.spikeprogress);
	ini_write_real("Run", "bleedingprogress", global.bleedingprogress);
	ini_write_real("Run", "castingprogress", global.castingprogress);
	ini_write_real("Run", "ascendingprogress", global.ascendingprogress);
	
	ini_write_real("Run", "H06refill", global.H06refill);

	for(i = 0; i <= 699; i++) {
	    ini_write_real("Run", "Weap" + string(i), global.Weap[i]);
	}
	for(i = 0; i <= 4; i++) {
	    for(j = 1; j <= 2; j++) {
	    ini_write_real("Run", "weapon" + string(i) + "-" + string(j), Soul_Weapons_Control.weapon[i,j]);
	    }
	}
	for(i = 0; i < 16; i++) {
	    for(j = 1; j <= 5; j++) {
	    ini_write_real("Run", "heart" + string(i) + "-" + string(j), Soul_Hearts_Control.heart[i,j]);
	    }
	}
	for(i = 0; i <= 39; i++) {
	    //for(j = 0; j <= 39; j++) {
	    //ini_write_string("Run", "floor" + string(i) + "-" + string(j), string(global.floor[i,j]));
	    //}
	    ini_write_string("Run", "floor" + string(i) + "-" + string(0), string(global.floor[i,0]));
	    ini_write_real("Run", "floor" + string(i) + "-" + string(1), global.floor[i,1]);
	    ini_write_real("Run", "floor" + string(i) + "-" + string(2), global.floor[i,2]);
	    ini_write_real("Run", "floor" + string(i) + "-" + string(3), global.floor[i,3]);
	    //ini_write_string("Run", "floor" + string(i) + "-" + string(4), sprite_get_name(string(global.floor[i,4])));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(4), sprite_get_name(global.floor[i,4]));
	    ini_write_real("Run", "floor" + string(i) + "-" + string(5), global.floor[i,5]);
	    ini_write_real("Run", "floor" + string(i) + "-" + string(6), global.floor[i,6]);
	    ini_write_string("Run", "floor" + string(i) + "-" + string(7), string(global.floor[i,7]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(8), string(global.floor[i,8]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(9), string(global.floor[i,9]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(10), string(global.floor[i,10]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(11), string(global.floor[i,11]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(12), string(global.floor[i,12]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(13), string(global.floor[i,13]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(14), string(global.floor[i,14]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(15), string(global.floor[i,15]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(16), string(global.floor[i,16]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(17), string(global.floor[i,17]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(18), string(global.floor[i,18]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(19), string(global.floor[i,19]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(20), string(global.floor[i,20]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(21), object_get_name(global.floor[i,21]));
	    ini_write_real("Run", "floor" + string(i) + "-" + string(22), global.floor[i,22]);
	    ini_write_real("Run", "floor" + string(i) + "-" + string(23), global.floor[i,23]);
	    ini_write_real("Run", "floor" + string(i) + "-" + string(24), global.floor[i,24]);
	    ini_write_string("Run", "floor" + string(i) + "-" + string(25), object_get_name(global.floor[i,25]));
	    ini_write_string("Run", "floor" + string(i) + "-" + string(26), object_get_name(global.floor[i,26]));
		ini_write_real("Run", "floor" + string(i) + "-" + string(27), global.floor[i,27]);
		ini_write_string("Run", "floor" + string(i) + "-" + string(28), object_get_name(global.floor[i,28]));
		ini_write_real("Run", "floor" + string(i) + "-" + string(29), global.floor[i,29]);
	    ini_write_real("Run", "floor" + string(i) + "-" + string(30), global.floor[i,30]);
		ini_write_string("Run", "floor" + string(i) + "-" + string(31), object_get_name(global.floor[i,31]));
		ini_write_real("Run", "floor" + string(i) + "-" + string(32), global.floor[i,32]);
	    ini_write_real("Run", "floor" + string(i) + "-" + string(33), global.floor[i,33]);
	}
	for(i = 0; i <= 39; i++) {
	    ini_write_real("Run", "A" + string(i), global.A[i]);
	    ini_write_real("Run", "B" + string(i), global.B[i]);
	    ini_write_real("Run", "C" + string(i), global.C[i]);
	    ini_write_real("Run", "D" + string(i), global.D[i]);
	    ini_write_real("Run", "E" + string(i), global.E[i]);
	    ini_write_real("Run", "F" + string(i), global.F[i]);
	    ini_write_real("Run", "G" + string(i), global.G[i]);
	    ini_write_real("Run", "H" + string(i), global.H[i]);
		ini_write_real("Run", "I" + string(i), global.I[i]);
	    ini_write_real("Run", "J" + string(i), global.J[i]);
	    ini_write_real("Run", "K" + string(i), global.K[i]);
		ini_write_real("Run", "L" + string(i), global.L[i]);
	    ini_write_real("Run", "M" + string(i), global.M[i]);
		ini_write_real("Run", "N" + string(i), global.N[i]);
		ini_write_real("Run", "OA" + string(i), global.OA[i]);
		ini_write_real("Run", "OB" + string(i), global.OB[i]);
		ini_write_real("Run", "OC" + string(i), global.OC[i]);
		ini_write_real("Run", "P" + string(i), global.P[i]);
		ini_write_real("Run", "S" + string(i), global.S[i]);
	    ini_write_real("Run", "R" + string(i), global.R[i]);
		ini_write_real("Run", "T" + string(i), global.T[i]);
		ini_write_real("Run", "U" + string(i), global.U[i]);
		ini_write_real("Run", "V" + string(i), global.V[i]);
		ini_write_real("Run", "W" + string(i), global.W[i]);
		ini_write_real("Run", "XA" + string(i), global.XA[i]);
		ini_write_real("Run", "XB" + string(i), global.XB[i]);
		ini_write_real("Run", "XC" + string(i), global.XC[i]);
    
	    //ini_write_real("Run", "recollectionA" + string(i), global.recollectionA[i]);
	}
	
	// Item Pools
	var aa = 0;
	var bb = 0;
	var cc = 0;
	var dd = 0;
	var ee = 0;
	var ff = 0;
	var pools = [global.AItemPool, global.BItemPool, global.CItemPool, global.DItemPool, global.EItemPool, global.FItemPool, global.GItemPool, global.HItemPool, global.IItemPool, global.JItemPool, global.KItemPool, global.LItemPool, global.MItemPool, global.NItemPool, global.OAItemPool, global.OBItemPool, global.OCItemPool, global.PItemPool, global.RItemPool, global.SItemPool, global.TItemPool, global.UItemPool, global.VItemPool, global.WItemPool, global.XAItemPool, global.XBItemPool, global.XCItemPool];
	for(j = 0; j < array_length(pools); j++) {
		var pool = pools[j];
		var psize = ds_list_size(pool);
		//var psize = array_length(pool);
		for(i = 0; i < psize; i++) {
			var it = ds_list_find_value(pool, i);
			//var it = pool[i]
			if it = "A00" || it = "B00" || it = "C00" || it = "D00" || it = "E00" || it = "F00" {
				if it = "A00" {
					aa++;
					ini_write_real("Run", "Pool" + string(it), aa);
				}
				if it = "B00" {
					bb++;
					ini_write_real("Run", "Pool" + string(it), bb);
				}
				if it = "C00" {
					cc++;
					ini_write_real("Run", "Pool" + string(it), cc);
				}
				if it = "D00" {
					dd++;
					ini_write_real("Run", "Pool" + string(it), dd);
				}
				if it = "E00" {
					ee++;
					ini_write_real("Run", "Pool" + string(it), ee);
				}
				if it = "F00" {
					ff++;
					ini_write_real("Run", "Pool" + string(it), ff);
				}
				continue;
			}
			ini_write_real("Run", "Pool" + string(it), 1);
		}
	}
	
	// Item Variables
	
	//ini_write_real("Run", "hopFieldSpawn", global.bossfireratefactor);
	//ini_write_real("Run", "blsFieldSpawn", global.bossdamagefactor);
	//ini_write_real("Run", "assFieldSpawn", global.bossaccuracyfactor);
	//ini_write_real("Run", "loaFieldSpawn", global.bossdifficultyadd);
	//ini_write_real("Run", "parFieldSpawn", global.gamedarknessadd);
	
	ini_write_real("Run", "clarityBomb", global.clarityBomb);
	ini_write_real("Run", "OC4Debuff", global.OC4Debuff);
	ini_write_real("Run", "temperCharge", global.temperCharge);
	ini_write_real("Run", "temperActive", global.temperActive);
	ini_write_real("Run", "downwardSpiralBoost", global.downwardSpiralBoost);
	ini_write_real("Run", "B06HeartConversions", global.B06HeartConversions);
	//for(i = 0; i <= 39; i++) {
	//show_debug_message("saving OA5rooms: " + string(global.OA5rooms))
	//global.OA5rooms = json_stringify(global.OA5rooms)
	//global.OA5rooms = string_replace_all(global.OA5rooms, "\"", "\'")
	
	//show_debug_message("saving OA5rooms: " + string(string_replace_all(json_stringify(global.OA5rooms), "\"", "\'")))
	ini_write_string("Run", "OA5rooms", string_replace_all(json_stringify(global.OA5rooms), "\"", "'"));
	//}
	
	
	
	ini_close();



}
