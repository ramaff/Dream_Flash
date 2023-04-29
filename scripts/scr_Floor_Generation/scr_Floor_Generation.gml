function scr_Floor_Generation() {
	global.spiritRoom = choose(7,10,13);
	//global.spiritRoom = 1;
	if global.goodSpirits > 0 {
	    global.evilSpiritRoom = choose(8,11,14);
	}

	var extraRoomStart = global.chapterRooms;
	
	var i = 1;
	for(i = 1; i <= (global.maxRooms); i++) {
		//show_debug_message("scr_Floor_Generation: " + string(i))
	    roomAttempt = 0;
	    if i = 4 {
	        nextRoomType = choose("Weapon Field", "Misc Field");
	    } 
	    if i = 11 {
			if Flash[4,0] = "Weapon Field" {
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
				while Flash[k,0] = nextRoomType {
					nextRoomType = choose("Chamber", "State");
				}
			}
		}
	    /*if i = 3 and global.currentchapter = 1 {
	        nextRoomType = choose("Strength Field","Vitality Field","Essence Field","Dexterity Field","Perception Field");
			//nextRoomType = "Strength Field";
		}  */
	    Flash[i,0] = nextRoomType;
    
	    Flash[i,3] = 1024;
	    if i = 15 and global.currentchapter = 1 {
	        Flash[i,0] = "Super Boss";
	        Flash[i,3] = 1408;
	    }
	    if i = 15 and global.currentchapter = 2 {
	        Flash[i,0] = "Super Boss";
	        Flash[i,3] = 1536;
	    }
		if i = 18 and global.currentchapter = 3 {
	        Flash[i,0] = "Super Boss";
	        Flash[i,3] = 1536;
	    }
		if i = 15 and global.currentchapter = 4 {
	        Flash[i,0] = "Super Boss";
	        Flash[i,3] = 1536;
	    }
	    //if i = 17 and global.currentchapter = 3 {
	    //    Flash[i,0] = "Super Boss";
	    //    Flash[i,3] = 1344;
	    //}
	    if global.currentchapter = 1 {
	        Flash[i,4] = bg_Flash_Tiles;
	    }
	    if global.currentchapter = 2 {
	        Flash[i,4] = bg_Feel_Tiles;
	    }
	    if global.currentchapter = 3 {
	        Flash[i,4] = bg_Dream_Tiles;
	    }
		if global.currentchapter >= 4 {
	        Flash[i,4] = bg_Nightmare_Tiles;
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
					Flash[list[| k],4] = bg_Dungeon_Tiles;	
				}
				for (k = 6; k < 10; k++) {
					Flash[list[| k],4] = bg_Flash_Dungeon_Tiles;	
					//Flash[list[| k],4] = bg_Forest_Tiles;	
				}
	        }
        
	        if global.currentchapter = 2 {
				
				var k = 1
				for (k = 1; k < 3; k++) {
					Flash[list[| k],4] = bg_Dungeon_Tiles;	
				}
				for (k = 4; k < 10; k++) {
					Flash[list[| k],4] = bg_Feel_Dungeon_Tiles;	
				}
	        }
        
	        if global.currentchapter = 3 {
				
				var k = 1
				for (k = 1; k < 4; k++) {
					Flash[list[| k],4] = bg_Dungeon_Tiles;	
				}
				for (k = 6; k < 12; k++) {
					Flash[list[| k],4] = bg_Dream_Dungeon_Tiles;	
				}
	        }
			
			if global.currentchapter = 4 {
				
				var k = 1
				for (k = 1; k < 3; k++) {
					Flash[list[| k],4] = bg_Dungeon_Tiles;	
				}
				for (k = 4; k < 10; k++) {
					Flash[list[| k],4] = bg_Nightmare_Dungeon_Tiles;	
				}
				
	        }
	        Flash[8,4] = bg_Safe_Room_Tiles;
	        //Flash[1,4] = bg_Caves;
	        //Flash[2,4] = bg_Depths;
	    }
    
    
	    Flash[i,5] = 0; // Room X Offset
	    Flash[i,6] = 0; // Room Y Offset
	    for(j = 1; j <= 13; j++) {
	        Flash[i,6 + j] = 0; 
	    }
	    if Flash[i,0] = "Boss" || Flash[i,0] = "Super Boss" {
	        Flash[i,21] = scr_Boss_Choose(i, 0); // Boss Type or Item Type
	        Flash[i,22] = global.champ; // Boss Champ or Second Item
	        Flash[i,23] = global.boost; // Boss Boost or Third Item
	        Flash[i,24] = global.difficultyReward;
			if Flash[i,0] = "Boss" {
				Flash[i,27] = scr_Hazard_Choose(i,Flash[i,4]);
			}
	        if Flash[i,23] = 2 {
	            Flash[i,3] += 256;
	        }
	        if Flash[i,0] = "Boss" {
				Flash[i,3] += 96;
	            Flash[i,3] += 24 * Flash[i,24];
				Flash[i,3] += random(8) * Flash[i,24];
	        }
	        if i = global.spiritRoom {
	            Flash[i,25] = scr_Spirit_Choose("Good");
	            Flash[i,3] += 128;
	        }
	        if i = global.evilSpiritRoom {
	            Flash[i,26] = scr_Spirit_Choose("Bad");
	            Flash[i,3] += 128;
	        }
	    }
	    //Flash[i,3] = 1216;
		var hopeDiamond = 0;
		var itemNumChoice = 1;
		
	    if Flash[i,0] = "Strength Field" || Flash[i,0] = "Vitality Field" || Flash[i,0] = "Dexterity Field" || Flash[i,0] = "Essence Field" || Flash[i,0] = "Perception Field" {
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
				
	            Flash[i,j+6] = scr_Class_Item_Choose(Flash[i,0],0);
	        }
	        Flash[i,19] = scr_Stat_Up_Choose(Flash[i,0]);
	    }
	    if Flash[i,0] = "Misc Field" {
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
				if j <= 2 {
					hopeDiamond = 0;
				} else {
					hopeDiamond = 1;	
				}
				
	            Flash[i,j+6] = scr_Misc_Field_Pool_Pick()
	        }
	    }
	    /*
	    if Flash[i,0] = "Heart Field" {
	        Flash[i,7] = scr_Heart_Item_Choose(Flash[i,0]);
	    }
	    if Flash[i,0] = "Minion Field" {
	        Flash[i,7] = scr_Minion_Item_Choose(Flash[i,0]);
	    }
	    */
	    if Flash[i,0] = "Weapon Field" {
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
				if j <= 2 {
					hopeDiamond = 0;
				} else {
					hopeDiamond = 1;	
				}
				
	            Flash[i,j+6] = scr_Weapon_Item_Choose();
	        }
	    }
	    if Flash[i,0] = "Shop" {
	        Flash[i,4] = bg_Safe_Room_Tiles;
	        Flash[i,3] += 256;
	        //Flash[i,7] = scr_Food_Item_Choose();
	        Flash[i,7] = scr_Pool_Pick(global.JItemPool);
	        Flash[i,8] = scr_Pool_Pick(global.HItemPool);
	        Flash[i,9] = scr_Weapon_Item_Choose();
	        Flash[i,10] = scr_Weapon_Item_Choose();
	        miscChoose = choose(1,2,3,4)
	        if miscChoose = 1 {
	            Flash[i,11] = scr_Pool_Pick(global.MItemPool);
	        } if miscChoose = 2 {
	            Flash[i,11] = scr_Pool_Pick(global.KItemPool);
	        } if miscChoose = 3 {
	            Flash[i,11] = scr_Pool_Pick(global.LItemPool);
	        } if miscChoose = 4 {
	            Flash[i,11] = scr_Pool_Pick(global.NItemPool);
	        }
			miscChoose = choose(1,2,3,4)
	        if miscChoose = 1 {
	            Flash[i,12] = scr_Pool_Pick(global.MItemPool);
	        } if miscChoose = 2 {
	            Flash[i,12] = scr_Pool_Pick(global.KItemPool);
	        } if miscChoose = 3 {
	            Flash[i,12] = scr_Pool_Pick(global.LItemPool);
	        } if miscChoose = 4 {
	            Flash[i,12] = scr_Pool_Pick(global.NItemPool);
	        }
			miscChoose = choose(1,2,3,4,5,6,7,8,8,8,8);
			//miscChoose = 6;
	        if miscChoose = 1 {
	            Flash[i,13] = scr_Pool_Pick(global.UItemPool);
	        } if miscChoose = 2 {
	            Flash[i,13] = scr_Pool_Pick(global.SItemPool);
	        } if miscChoose = 3 {
	            Flash[i,13] = scr_Pool_Pick(global.WItemPool);
	        } if miscChoose = 4 {
	            Flash[i,13] = scr_Pool_Pick(global.PItemPool);
	        } if miscChoose = 5 {
	            Flash[i,13] = scr_Pool_Pick(global.VItemPool);
	        } if miscChoose = 6 {
	            Flash[i,13] = scr_Pool_Pick(global.GItemPool);
	        } if miscChoose = 7 {
	            Flash[i,13] = scr_Pool_Pick(global.TItemPool);
	        } if miscChoose = 8 {
				Flash[i,13] = scr_Pool_Pick(global.JItemPool);
			}	
	    }
		
		if Flash[i,0] = "Chamber" {
	        Flash[i,4] = bg_Mind_Chamber_Tiles;
	        Flash[i,3] += 256 + (64 * global.currentchapter);
			
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
				if j <= 2 {
					hopeDiamond = 0;
				} else {
					hopeDiamond = 1;	
				}
				
	            Flash[i,j+6] = scr_Misc_Field_Pool_Pick();
	        }
			
			var baseroom = 10;
			
			Flash[i,21] = scr_Boss_Choose(baseroom, 1); // Boss Type or Item Type
	        Flash[i,22] = global.champ; // Boss Champ or Second Item
	        Flash[i,23] = global.boost; // Boss Boost or Third Item
	        Flash[i,24] = 0;
			Flash[i,27] = scr_Hazard_Choose(i,Flash[i,4]);
	        if Flash[i,23] = 2 {
	            Flash[i,3] += 256;
	        }
	        if Flash[i,0] = "Boss" {
				Flash[i,3] += 96;
	            Flash[i,3] += 24 * Flash[i,24];
				Flash[i,3] += random(8) * Flash[i,24];
	        }
			Flash[i,28] = scr_Boss_Choose(baseroom, 1, 5); // Boss Type or Item Type
			Flash[i,29] = global.champ; // Boss Champ or Second Item
	        Flash[i,30] = global.boost; // Boss Boost or Third Item
			Flash[i,31] = scr_Boss_Choose(baseroom, 1, 10); // Boss Type or Item Type
			Flash[i,32] = global.champ; // Boss Champ or Second Item
	        Flash[i,33] = global.boost; // Boss Boost or Third Item
		}
		
		if Flash[i,0] = "State" {
	        Flash[i,4] = bg_State_Tiles;
	        Flash[i,3] += 256 + (64 * global.currentchapter);
			
			itemNumChoice = 1 + floor((global.soulhope + random(global.soulhope * 3)) / 100);
	        itemNumPick = 1;
			
			var stype = choose(1,2,3,4,6,7,9);
			
	        for(j = 1; j <= itemNumChoice; j++) {
	            Flash[i,j+6] = scr_Misc_Field_Pool_Pick();
	        }
			
			var baseroom = ceil(i / 4);
			
			Flash[i,21] = scr_State_Boss_Choose(stype); // Boss Type or Item Type
	        Flash[i,22] = 0; // Boss Champ or Second Item
	        Flash[i,23] = 0; // Boss Boost or Third Item
	        Flash[i,24] = 0;
			Flash[i,27] = scr_Hazard_Choose(i,Flash[i,4]);
	        if Flash[i,23] = 2 {
	            Flash[i,3] += 256;
	        }
		}
	
		Flash[i,3] = floor(Flash[i,3] / 128) * 128;

		//Flash[i,3] = 1408;
		//Flash[i,4] = bg_Feel_Dungeon_Tiles;
	}


	Flash[0,0] = "Spawn"; // Room Type
	Flash[0,1] = 0; // Map X Position
	Flash[0,2] = 0; // Map Y Position
	Flash[0,3] = 1024; // Room Size
	Flash[0,4] = bg_Flash_Tiles; // Room Background

	//Flash[extraRoomStart + 1,4] = bg_Mind_Chamber_Tiles;
	
	if ds_exists(list, ds_type_list) {
		ds_list_clear(list)	
	}


}
