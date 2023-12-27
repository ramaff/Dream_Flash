function scr_Floor_Generation() {
	global.spiritRoom = choose(7,10,13);
	//global.spiritRoom = 1;
	if global.goodSpirits > 0 {
	    global.evilSpiritRoom = choose(9,12,14);
	}

	var extraRoomStart = global.chapterRooms;
	
	var i = 1;
	for(i = 1; i <= (global.maxRooms); i++) {
		//show_debug_message("scr_Floor_Generation: " + string(i))
	    roomAttempt = 0;
	    if i = 4 {
	        nextRoomType = choose("Weapon Field", "Misc Field");
	        nextRoomType = choose("Weapon Field", "Misc Field");
	    } 
	    if i = 11 {
			if global.floor[4,0] = "Weapon Field" {
				nextRoomType = "Misc Field";
			} else {
				nextRoomType = "Weapon Field";
			}
	    }
	    if i = 8 {
	        nextRoomType = "Shop";
	    } 
	    if i != 4 and i != 8 and i != 11 {
	        nextRoomType = "Boss";
	    }
		if (i >= extraRoomStart + 1) {
			nextRoomType = choose("Chamber", "State");
			var k = 1;
			for(k = extraRoomStart + 1; k <= (global.maxRooms); k++) { 
				while global.floor[k,0] = nextRoomType {
					nextRoomType = choose("Chamber", "State");
				}
			}
		}
	    /*if i = 3 and global.currentchapter = 1 {
	        nextRoomType = choose("Strength Field","Vitality Field","Essence Field","Dexterity Field","Perception Field");
			//nextRoomType = "Strength Field";
		}  */
	    global.floor[i,0] = nextRoomType;
    
	    global.floor[i,3] = 1024;
	    if i = 15 and global.currentchapter = 1 {
	        global.floor[i,0] = "Super Boss";
	        global.floor[i,3] = 1408;
	    }
	    if i = 15 and global.currentchapter = 2 {
	        global.floor[i,0] = "Super Boss";
	        global.floor[i,3] = 1536;
	    }
		if i = 18 and global.currentchapter = 3 {
	        global.floor[i,0] = "Super Boss";
	        global.floor[i,3] = 1536;
	    }
		if i = 15 and global.currentchapter = 4 {
	        global.floor[i,0] = "Super Boss";
	        global.floor[i,3] = 1536;
	    }
	    //if i = 17 and global.currentchapter = 3 {
	    //    global.floor[i,0] = "Super Boss";
	    //    global.floor[i,3] = 1344;
	    //}
	    if global.currentchapter = 1 {
	        global.floor[i,4] = bg_Flash_Tiles;
	    }
	    if global.currentchapter = 2 {
	        global.floor[i,4] = bg_Feel_Tiles;
	    }
	    if global.currentchapter = 3 {
	        global.floor[i,4] = bg_Dream_Tiles;
	    }
		if global.currentchapter >= 4 {
	        global.floor[i,4] = bg_Nightmare_Tiles;
	    }
    
	    if i = global.chapterRooms {
			list = ds_list_create();
			//list = {};
	        for (var j = 1; j < global.chapterRooms; j++) {
	            list[| j] = j;
	        }
			ds_list_shuffle(list);
	        if global.currentchapter = 1 {
				var k = 1
				for (k = 1; k < 6; k++) {
					global.floor[list[| k],4] = bg_Dungeon_Tiles;	
				}
				for (k = 6; k < 10; k++) {
					global.floor[list[| k],4] = bg_Flash_Dungeon_Tiles;	
					//global.floor[list[| k],4] = bg_Forest_Tiles;	
				}
	        }
        
	        if global.currentchapter = 2 {
				
				var k = 1
				for (k = 1; k < 3; k++) {
					global.floor[list[| k],4] = bg_Dungeon_Tiles;	
				}
				for (k = 4; k < 10; k++) {
					global.floor[list[| k],4] = bg_Feel_Dungeon_Tiles;	
				}
	        }
        
	        if global.currentchapter = 3 {
				
				var k = 1
				for (k = 1; k < 4; k++) {
					global.floor[list[| k],4] = bg_Dungeon_Tiles;	
				}
				for (k = 6; k < 12; k++) {
					global.floor[list[| k],4] = bg_Dream_Dungeon_Tiles;	
				}
	        }
			
			if global.currentchapter = 4 {
				
				var k = 1
				for (k = 1; k < 3; k++) {
					global.floor[list[| k],4] = bg_Dungeon_Tiles;	
				}
				for (k = 4; k < 10; k++) {
					global.floor[list[| k],4] = bg_Nightmare_Dungeon_Tiles;	
				}
				
	        }
	        global.floor[8,4] = bg_Safe_Room_Tiles;
	        //global.floor[1,4] = bg_Caves;
	        //global.floor[2,4] = bg_Depths;
	    }
    
    
	    global.floor[i,5] = 0; // Room X Offset
	    global.floor[i,6] = 0; // Room Y Offset
	    for(j = 1; j <= 13; j++) {
	        global.floor[i,6 + j] = 0; 
	    }
	    if global.floor[i,0] = "Boss" || global.floor[i,0] = "Super Boss" {
	        global.floor[i,21] = scr_Boss_Choose(i, 0); // Boss Type or Item Type
	        global.floor[i,22] = global.champ; // Boss Champ or Second Item
	        global.floor[i,23] = global.boost; // Boss Boost or Third Item
	        global.floor[i,24] = global.difficultyReward;
			if global.floor[i,0] = "Boss" {
				global.floor[i,27] = scr_Hazard_Choose(i,global.floor[i,4]);
			}
	        if global.floor[i,23] = 2 {
	            global.floor[i,3] += 256;
	        }
	        if global.floor[i,0] = "Boss" {
				global.floor[i,3] += 112;
	            global.floor[i,3] += 12 * global.floor[i,24];
				global.floor[i,3] += random(8) * global.floor[i,24];
	        }
	        if i = global.spiritRoom {
	            global.floor[i,25] = scr_Spirit_Choose("Good");
	            //global.floor[i,3] += 128;
	        }
	        if i = global.evilSpiritRoom {
	            global.floor[i,26] = scr_Spirit_Choose("Bad");
	            //global.floor[i,3] += 128;
	        }
	    }
	    //global.floor[i,3] = 1216;
		var hopeDiamond = 0;
		var itemNumChoice = 1;
		
	    if global.floor[i,0] = "Strength Field" || global.floor[i,0] = "Vitality Field" || global.floor[i,0] = "Dexterity Field" || global.floor[i,0] = "Essence Field" || global.floor[i,0] = "Perception Field" {
	        itemNumChoice = 2 + floor((global.soulhope + random(100 + global.soulhope * 3)) / 100);
		
			
			var fr = frac(global.extraitems);
			itemNumChoice += global.extraitems - fr;
			
			if fr > 0 {
				if scr_Chance(1 / fr) {
					itemNumChoice += 1;
				}
			}
			
	        itemNumPick = 1;
	        for(j = 1; j <= itemNumChoice; j++) {
				
	            global.floor[i,j+6] = scr_Class_Item_Choose(global.floor[i,0],0);
	        }
	        global.floor[i,19] = scr_Stat_Up_Choose(global.floor[i,0]);
	    }
	    if global.floor[i,0] = "Misc Field" {
	        itemNumChoice = 2 + floor((global.soulhope + random(100 + global.soulhope * 3)) / 100);
		
			var fr = frac(global.extraitems)
			itemNumChoice += global.extraitems - fr;
			
			if fr > 0 {
				if scr_Chance(1 / fr) {
					itemNumChoice += 1;
				}
			}
			
	        itemNumPick = 1;
	        for(j = 1; j <= itemNumChoice; j++) {
				
	            global.floor[i,j+6] = scr_Misc_Field_Pool_Pick()
	        }
	    }
	    /*
	    if global.floor[i,0] = "Heart Field" {
	        global.floor[i,7] = scr_Heart_Item_Choose(global.floor[i,0]);
	    }
	    if global.floor[i,0] = "Minion Field" {
	        global.floor[i,7] = scr_Minion_Item_Choose(global.floor[i,0]);
	    }
	    */
	    if global.floor[i,0] = "Weapon Field" {
	        itemNumChoice = 2 + floor((global.soulhope + random(100 + global.soulhope * 3)) / 100);
		
			var fr = frac(global.extraitems)
			itemNumChoice += global.extraitems - fr;
			
			if fr > 0 {
				if scr_Chance(1 / fr) {
					itemNumChoice += 1;
				}
			}
			
	        itemNumPick = 1;
		
			//itemNumChoice = 4;
	        for(j = 1; j <= itemNumChoice; j++) {
				
	            global.floor[i,j+6] = scr_Weapon_Item_Choose();
	        }
	    }
	    if global.floor[i,0] = "Shop" {
	        global.floor[i,4] = bg_Safe_Room_Tiles;
	        global.floor[i,3] += 256;
	        //global.floor[i,7] = scr_Food_Item_Choose();
	        global.floor[i,7] = scr_Pool_Pick(global.j_item_pool);
	        global.floor[i,8] = scr_Pool_Pick(global.h_item_pool);
	        global.floor[i,9] = scr_Weapon_Item_Choose();
	        global.floor[i,10] = scr_Weapon_Item_Choose();
	        var miscChoose = choose(1,2,3)
			var _first_misc = ""
	        if miscChoose = 1 {
	            global.floor[i,11] = scr_Pool_Pick(global.n_item_pool);
	        } if miscChoose = 2 {
	            global.floor[i,11] = scr_Pool_Pick(global.k_item_pool);
	        } if miscChoose = 3 {
	            global.floor[i,11] = scr_Pool_Pick(global.l_item_pool);
	        }
			_first_misc = string_letters(global.floor[i,11])
			var _second_misc = _first_misc
			while(_second_misc = _first_misc) {
				miscChoose = choose(1,2,3)
		        if miscChoose = 1 {
		            global.floor[i,12] = scr_Pool_Pick(global.n_item_pool);
		        } if miscChoose = 2 {
		            global.floor[i,12] = scr_Pool_Pick(global.k_item_pool);
		        } if miscChoose = 3 {
		            global.floor[i,12] = scr_Pool_Pick(global.l_item_pool);
		        } 
				_second_misc = string_letters(global.floor[i,12])
			}
			
			miscChoose = choose(1,2,3,4,5,6,7,8,8,8,9);
			//miscChoose = 6;
	        if miscChoose = 1 {
	            global.floor[i,13] = scr_Pool_Pick(global.u_item_pool);
	        } if miscChoose = 2 {
	            global.floor[i,13] = scr_Pool_Pick(global.s_item_pool);
	        } if miscChoose = 3 {
	            global.floor[i,13] = scr_Pool_Pick(global.w_item_pool);
	        } if miscChoose = 4 {
	            global.floor[i,13] = scr_Pool_Pick(global.p_item_pool);
	        } if miscChoose = 5 {
	            global.floor[i,13] = scr_Pool_Pick(global.v_item_pool);
	        } if miscChoose = 6 {
	            global.floor[i,13] = scr_Pool_Pick(global.g_item_pool);
	        } if miscChoose = 7 {
	            global.floor[i,13] = scr_Pool_Pick(global.t_item_pool);
	        } if miscChoose = 8 {
				global.floor[i,13] = scr_Pool_Pick(global.m_item_pool);
			} if miscChoose = 9 {
	            global.floor[i,13] = scr_Pool_Pick(global.q_item_pool);
	        }
	    }
		
		if global.floor[i,0] = "Chamber" {
	        global.floor[i,4] = bg_Mind_Chamber_Tiles;
	        global.floor[i,3] += 256 + (64 * global.currentchapter);
			
			itemNumChoice = 1 + floor((global.soulhope + random(100 + global.soulhope * 3)) / 100);
		
			var fr = frac(global.extraitems)
			itemNumChoice += global.extraitems - fr;
			
			if fr > 0 {
				if scr_Chance(1 / fr) {
					itemNumChoice += 1;
				}
			}
			
	        itemNumPick = 1;
	        for(j = 1; j <= itemNumChoice; j++) {
				
	            global.floor[i,j+6] = scr_Misc_Field_Pool_Pick();
	        }
			
			var baseroom = 10;
			
			global.floor[i,21] = scr_Boss_Choose(baseroom, 1); // Boss Type or Item Type
	        global.floor[i,22] = global.champ; // Boss Champ or Second Item
	        global.floor[i,23] = global.boost; // Boss Boost or Third Item
	        global.floor[i,24] = 0;
			global.floor[i,27] = scr_Hazard_Choose(i,global.floor[i,4]);
	        if global.floor[i,23] = 2 {
	            global.floor[i,3] += 256;
	        }
	        if global.floor[i,0] = "Boss" {
				global.floor[i,3] += 96;
	            global.floor[i,3] += 24 * global.floor[i,24];
				global.floor[i,3] += random(8) * global.floor[i,24];
	        }
			global.floor[i,28] = scr_Boss_Choose(baseroom, 1, 5); // Boss Type or Item Type
			global.floor[i,29] = global.champ; // Boss Champ or Second Item
	        global.floor[i,30] = global.boost; // Boss Boost or Third Item
			global.floor[i,31] = scr_Boss_Choose(baseroom, 1, 10); // Boss Type or Item Type
			global.floor[i,32] = global.champ; // Boss Champ or Second Item
	        global.floor[i,33] = global.boost; // Boss Boost or Third Item
		}
		
		if global.floor[i,0] = "State" {
	        global.floor[i,4] = bg_State_Tiles;
	        global.floor[i,3] += 256 + (64 * global.currentchapter);
			
			itemNumChoice = 1 + floor((global.soulhope + random(global.soulhope * 3)) / 100);
	        itemNumPick = 1;

			
	        for(j = 1; j <= itemNumChoice; j++) {
	            global.floor[i,j+6] = scr_Misc_Field_Pool_Pick();
	        }
			
			var baseroom = ceil(i / 4);
			
			global.floor[i,21] = scr_State_Boss_Choose(false); // Boss Type or Item Type
	        global.floor[i,22] = 0; // Boss Champ or Second Item
	        global.floor[i,23] = 0; // Boss Boost or Third Item
	        global.floor[i,24] = 0;
			global.floor[i,27] = scr_Hazard_Choose(i,global.floor[i,4]);
	        if global.floor[i,23] = 2 {
	            global.floor[i,3] += 256;
	        }
		}
	
		global.floor[i,3] = floor(global.floor[i,3] / 128) * 128;

		//global.floor[i,3] = 1408;
		//global.floor[i,4] = bg_Feel_Dungeon_Tiles;
	}


	global.floor[0,0] = "Spawn"; // Room Type
	global.floor[0,1] = 0; // Map X Position
	global.floor[0,2] = 0; // Map Y Position
	global.floor[0,3] = 1024; // Room Size
	
	if global.currentchapter = 1 {
	    global.floor[0,4] = bg_Flash_Tiles;
	}
	if global.currentchapter = 2 {
	    global.floor[0,4] = bg_Feel_Tiles;
	}
	if global.currentchapter = 3 {
	    global.floor[0,4] = bg_Dream_Tiles;
	}
	if global.currentchapter >= 4 {
	    global.floor[0,4] = bg_Nightmare_Tiles;
	}


	//global.floor[extraRoomStart + 1,4] = bg_Mind_Chamber_Tiles;
	
	if ds_exists(list, ds_type_list) {
		ds_list_clear(list)	
	}


}
