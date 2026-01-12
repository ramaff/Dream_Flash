function scr_Load_Run() {
	
	var _save_file = "saverun.sav"
	var _backup_save_file = "saverun_backup.sav"
	
	scr_Handle_File_Load(_save_file, _backup_save_file)
	
	if (file_exists(_save_file))
	{
		
		var i = 0;
		var j = 0;

		ini_open(_save_file)
		
		var _run_version = ini_read_real("Run", "GAME_VERSION", 0) + (ini_read_real("Run", "GAME_MINOR_VERSION", 0) / 100)
		var _run_version_beta = ini_read_real("Run", "GAME_VERSION_BETA", 0)
		
		if _run_version < 23.6 {
			file_delete("saverun.sav");
			ini_close();
			global.loadrun = 0;
			exit;
		}
		
		for(i = 0; i <= 39; i++) {
			flo = asset_get_index(ini_read_string("Run", "floor" + string(i) + "-" + string(4),0));
	
			if !(sprite_exists(flo)) || flo = spr_Leave_Indicator {
				file_delete("saverun.sav");
				ini_close();
				global.loadrun = 0;
				exit;	
			}
		}
    
	    //extracting values
    
	    for(i = 0; i <= 699; i++) {
	        global.Weap[i] = ini_read_real("Run","Weap" + string(i),-1);
	    }
    
	    for(i = 0; i < 16; i++) {
	        for(j = 0; j <= 5; j++) {
	        Soul_Hearts_Control.heart[i,j] = ini_read_real("Run", "heart" + string(i) + "-" + string(j),0);
	        }
	    }
	    for(i = 0; i <= 39; i++) {
	        //for(j = 0; j <= 39; j++) {
	        //global.floor[i,j] = ini_read_string("Run", "floor" + string(i) + "-" + string(j),0);
	        //}
	        //}
	        global.floor[i,0] = ini_read_string("Run", "floor" + string(i) + "-" + string(0),0);
	        global.floor[i,1] = ini_read_real("Run", "floor" + string(i) + "-" + string(1),0);
	        global.floor[i,2] = ini_read_real("Run", "floor" + string(i) + "-" + string(2),0);
	        global.floor[i,3] = ini_read_real("Run", "floor" + string(i) + "-" + string(3),0);
	        global.floor[i,4] = asset_get_index(ini_read_string("Run", "floor" + string(i) + "-" + string(4),0));
	        global.floor[i,5] = ini_read_real("Run", "floor" + string(i) + "-" + string(5),0);
	        global.floor[i,6] = ini_read_real("Run", "floor" + string(i) + "-" + string(6),0);
	        global.floor[i,7] = ini_read_string("Run", "floor" + string(i) + "-" + string(7),0);
	        global.floor[i,8] = ini_read_string("Run", "floor" + string(i) + "-" + string(8),0);
	        global.floor[i,9] = ini_read_string("Run", "floor" + string(i) + "-" + string(9),0);
	        global.floor[i,10] = ini_read_string("Run", "floor" + string(i) + "-" + string(10),0);
	        global.floor[i,11] = ini_read_string("Run", "floor" + string(i) + "-" + string(11),0);
	        global.floor[i,12] = ini_read_string("Run", "floor" + string(i) + "-" + string(12),0);
	        global.floor[i,13] = ini_read_string("Run", "floor" + string(i) + "-" + string(13),0);
	        global.floor[i,14] = ini_read_string("Run", "floor" + string(i) + "-" + string(14),0);
	        global.floor[i,15] = ini_read_string("Run", "floor" + string(i) + "-" + string(15),0);
	        global.floor[i,16] = ini_read_string("Run", "floor" + string(i) + "-" + string(16),0);
	        global.floor[i,17] = ini_read_string("Run", "floor" + string(i) + "-" + string(17),0);
	        global.floor[i,18] = ini_read_string("Run", "floor" + string(i) + "-" + string(18),0);
	        global.floor[i,19] = ini_read_string("Run", "floor" + string(i) + "-" + string(19),0);
	        global.floor[i,20] = ini_read_string("Run", "floor" + string(i) + "-" + string(20),0);
	        global.floor[i,21] = asset_get_index(ini_read_string("Run", "floor" + string(i) + "-" + string(21),0));
	        global.floor[i,22] = ini_read_real("Run", "floor" + string(i) + "-" + string(22),0);
	        global.floor[i,23] = ini_read_real("Run", "floor" + string(i) + "-" + string(23),0);
	        global.floor[i,24] = ini_read_real("Run", "floor" + string(i) + "-" + string(24),0);
	        global.floor[i,25] = asset_get_index(ini_read_string("Run", "floor" + string(i) + "-" + string(25),0));
	        global.floor[i,26] = asset_get_index(ini_read_string("Run", "floor" + string(i) + "-" + string(26),0));
			global.floor[i,27] = ini_read_real("Run", "floor" + string(i) + "-" + string(27),0);
			global.floor[i,28] = asset_get_index(ini_read_string("Run", "floor" + string(i) + "-" + string(28),0));
			global.floor[i,29] = ini_read_real("Run", "floor" + string(i) + "-" + string(29),0);
	        global.floor[i,30] = ini_read_real("Run", "floor" + string(i) + "-" + string(30),0);
			global.floor[i,31] = asset_get_index(ini_read_string("Run", "floor" + string(i) + "-" + string(31),0));
			global.floor[i,32] = ini_read_real("Run", "floor" + string(i) + "-" + string(32),0);
	        global.floor[i,33] = ini_read_real("Run", "floor" + string(i) + "-" + string(33),0);
	    }
    
	    global.currentchapter = ini_read_real("Run","currentchapter",1);
	    global.currentroom = ini_read_real("Run","currentroom",0);
	    global.strFields = ini_read_real("Run","strFields",0);
	    global.vitFields = ini_read_real("Run","vitFields",0);
	    global.essFields = ini_read_real("Run","essFields",0);
	    global.dexFields = ini_read_real("Run","dexFields",0);
	    global.perFields = ini_read_real("Run","perFields",0);
	    global.staFields = ini_read_real("Run","staFields",0);
		global.strFieldSpawn = ini_read_real("Run","strFieldSpawn",0);
	    global.vitFieldSpawn = ini_read_real("Run","vitFieldSpawn",0);
	    global.essFieldSpawn = ini_read_real("Run","essFieldSpawn",0);
	    global.dexFieldSpawn = ini_read_real("Run","dexFieldSpawn",0);
	    global.perFieldSpawn = ini_read_real("Run","perFieldSpawn",0);
	    global.staFieldSpawn = ini_read_real("Run","staFieldSpawn",0);
		
		global.hopFieldSpawn = ini_read_real("Run","hopFieldSpawn",0);
	    global.blsFieldSpawn = ini_read_real("Run","blsFieldSpawn",0);
	    global.assFieldSpawn = ini_read_real("Run","assFieldSpawn",0);
	    global.loaFieldSpawn = ini_read_real("Run","loaFieldSpawn",0);
	    global.parFieldSpawn = ini_read_real("Run","parFieldSpawn",0);
	    global.desFieldSpawn = ini_read_real("Run","desFieldSpawn",0);	   
		
		global.emoteFieldSpawn = ini_read_real("Run","emoteFieldSpawn",0);
		global.totalFieldSpawn = ini_read_real("Run","totalFieldSpawn",0);
		
	    global.weaponslots = ini_read_real("Run","weaponslots",0);
	    global.soulstrength = ini_read_real("Run","soulstrength",0);
	    global.soulvitality = ini_read_real("Run","soulvitality",0);
	    global.soulessence = ini_read_real("Run","soulessence",0);
	    global.souldexterity = ini_read_real("Run","souldexterity",0);
	    global.soulperception = ini_read_real("Run","soulperception",0);
	    global.soulstate = ini_read_real("Run","soulstate",0);
    
	    global.souldespair = ini_read_real("Run","souldespair",0);
	    global.soulparanoia = ini_read_real("Run","soulparanoia",0);
	    global.soulloathing = ini_read_real("Run","soulloathing",0);
	    global.soulassurance = ini_read_real("Run","soulassurance",0);
	    global.soulbliss = ini_read_real("Run","soulbliss",0);
	    global.soulhope = ini_read_real("Run","soulhope",0);
    
	    global.soul_recall = ini_read_real("Run","soul_recall",0);
	    global.soul_xp = ini_read_real("Run","soul_xp",0);
	    global.soul_xp_threshold = ini_read_real("Run","soul_xp_threshold",0);
	    global.soul_xp_threshold_mult = ini_read_real("Run","soul_xp_threshold_mult",0);
	    global.soul_level = ini_read_real("Run","soul_level",0);
		global.chaptertime = ini_read_real("Run","chaptertime",0);
		global.glasstime = ini_read_real("Run","glasstime",0);
    
	    global.totalhearts = ini_read_real("Run","totalhearts",3);
	    global.spiritRoom = ini_read_real("Run","spiritRoom",0);
	    global.evilSpiritRoom = ini_read_real("Run","evilSpiritRoom",0);
		
		global.H06refill = ini_read_real("Run","H06refill",0);
		
		global.soulstatecharge = ini_read_real("Run","soulstatecharge",0);
	    global.soultransformedstate = ini_read_string("Run","soultransformedstate","None");
		global.currentstate = ini_read_string("Run","currentstate","Base");
		
		obj_Soul_Parent.scurrentstate = global.currentstate;
		obj_Soul_Parent.stransformedstate = global.soultransformedstate;
		obj_Soul_Parent.sstatecharge = global.soulstatecharge;
		
		global.maxRooms = ini_read_real("Run","maxrooms",0);
		global.extraRooms = ini_read_real("Run","extrarooms",0);
		
		if global.maxRooms = 0 {
			global.maxRooms = 18;
			global.extraRooms = 1;
			if global.currentchapter = 2 {
			    global.maxRooms = 18;
			}
			if global.currentchapter = 3 {
			    global.maxRooms = 25;
			}
			if global.currentchapter = 4 {
			    global.maxRooms = 21;
			}
		}
		
		global.snakeprogress = ini_read_real("Run","snakeprogress",0);
		global.beastprogress = ini_read_real("Run","beastprogress",0);
		global.mechprogress = ini_read_real("Run","mechprogress",0);
		global.scrubprogress = ini_read_real("Run","scrubprogress",0);
		global.dragonprogress = ini_read_real("Run","dragonprogress",0);
		global.spikeprogress = ini_read_real("Run","spikeprogress",0);
		global.bleedingprogress = ini_read_real("Run","bleedingprogress",0);
		global.castingprogress = ini_read_real("Run","castingprogress",0);
		global.ascendingprogress = ini_read_real("Run","ascendingprogress",0);
	
		global.soulhealth = Soul_Hearts_Control.heart[global.totalhearts - 1,3];
		global.soulhealthmax = Soul_Hearts_Control.heart[global.totalhearts - 1,4];
		obj_Soul_Parent.shealth = Soul_Hearts_Control.heart[global.totalhearts - 1,3];
		obj_Soul_Parent.smaxhealth = Soul_Hearts_Control.heart[global.totalhearts - 1,4]; 
	
    
	    for(i = 0; i <= 99; i++) {
	        global.A[i] = ini_read_real("Run","A" + string(i),0);
	        global.B[i] = ini_read_real("Run","B" + string(i),0);
	        global.C[i] = ini_read_real("Run","C" + string(i),0);
	        global.D[i] = ini_read_real("Run","D" + string(i),0);
	        global.E[i] = ini_read_real("Run","E" + string(i),0);
	        global.F[i] = ini_read_real("Run","F" + string(i),0);
	        global.G[i] = ini_read_real("Run","G" + string(i),0);
	        global.H[i] = ini_read_real("Run","H" + string(i),0);
			global.I[i] = ini_read_real("Run","I" + string(i),0);
	        global.J[i] = ini_read_real("Run","J" + string(i),0);
	        global.K[i] = ini_read_real("Run","K" + string(i),0);
			global.L[i] = ini_read_real("Run","L" + string(i),0);
	        global.M[i] = ini_read_real("Run","M" + string(i),0);
			global.N[i] = ini_read_real("Run","N" + string(i),0);
			global.OA[i] = ini_read_real("Run","OA" + string(i),0);
			global.OB[i] = ini_read_real("Run","OB" + string(i),0);
			global.OC[i] = ini_read_real("Run","OC" + string(i),0);
			global.P[i] = ini_read_real("Run","P" + string(i),0);
			global.S[i] = ini_read_real("Run","S" + string(i),0);
	        global.Q[i] = ini_read_real("Run","Q" + string(i),0);
	        global.R[i] = ini_read_real("Run","R" + string(i),0);
			global.T[i] = ini_read_real("Run","T" + string(i),0);
			global.U[i] = ini_read_real("Run","U" + string(i),0);
			global.V[i] = ini_read_real("Run","V" + string(i),0);
			global.W[i] = ini_read_real("Run","W" + string(i),0);
			global.XA[i] = ini_read_real("Run","XA" + string(i),0);
			global.XB[i] = ini_read_real("Run","XB" + string(i),0);
			global.XC[i] = ini_read_real("Run","XC" + string(i),0);

	    }
			
		var pools = scr_Get_Item_Pools(false)
		for(j = 0; j < array_length(pools); j++) {
			var pool = pools[j];
			ds_list_clear(pool);
			//array_delete(pool, 0, array_length(pool))
		}
		
		
		var pletters = scr_Get_Item_Pools(true)
		for(j = 0; j < array_length(pools); j++) {
			var pool = pools[j];
			var pletter = pletters[j];
			var psize = 50;
			for(i = 0; i < psize; i++) {
				if i < 10 {
					var pool00 = "Pool" + string(pletter) + "0" + string(i);
					var p00 = ini_read_real("Run", pool00, 0);
					if (p00 >= 1) and (pool00 = "PoolA00" || pool00 = "PoolB00" || pool00 = "PoolC00" || pool00 = "PoolD00" || pool00 = "PoolE00" || pool00 = "PoolF00") {
						repeat(p00) {
							ds_list_add(global.i_item_pool, string(pletter) + "0" + string(i));
							 //array_push(global.IItemPool, string(pletter) + "0" + string(i));
						}
						continue;
					}
					var it = ini_read_real("Run", "Pool" + string(pletter) + "0" + string(i), 0);
					if it = 1 {
						ds_list_add(pool, string(pletter) + "0" + string(i));
						//array_push(pool, string(pletter) + "0" + string(i));
					}
				} else {
					var it = ini_read_real("Run", "Pool" + string(pletter) + string(i), 0);
					if it = 1 {
						ds_list_add(pool, string(pletter) + string(i));
						//array_push(global.IItemPool, string(pletter) + string(i));
					}
				}
			}
			
		}
	        //global.A[i] = ini_read_real("Run","A" + string(i));
			
		
		global.clarityBomb = ini_read_real("Run","clarityBomb",0);
	    global.OC4Debuff = ini_read_string("Run","OC4Debuff","None");
		global.temperCharge = ini_read_real("Run","temperCharge",0);
		global.temperActive = ini_read_string("Run","temperActive","Base");
		global.downwardSpiralBoost = ini_read_real("Run","downwardSpiralBoost",0);
		global.B06HeartConversions = ini_read_real("Run","B06HeartConversions",0);
		
		global.OA5rooms = json_parse(ini_read_string("Run", "OA5rooms", "[]"));
		
		Soul_Weapons_Control.weapon = json_parse(ini_read_string("Run", "weapon", "[]"))
		
		global.items = json_parse(ini_read_string("Run", "items", "[]"))
		
	
        
	    ini_close();

	}





}
