function scr_Load_Room() {
	global.soulstrengthTemp = 0;
	global.soulvitalityTemp = 0;
	global.soulessenceTemp = 0;
	global.souldexterityTemp = 0;
	global.soulperceptionTemp = 0;
	global.soulstateTemp = 0;

	global.roomdarkness = 0;

	with (obj_Soul_Flash) {
	    global.soulflash++;
	    instance_destroy();
	}
	with (obj_Soul_Feel) {
	    global.soulfeel++;
	    instance_destroy();
	}
	with (obj_Soul_Dream) {
	    global.souldream++;
	    instance_destroy();
	}
	with (obj_Soul_Nightmare) {
	    global.soulnightmare++;
	    instance_destroy();
	}
	with (obj_Soul_Spiritual) {
	    if spirit = "Hope" {
	        global.soulhope++;
	    }
	    if spirit = "Bliss" {
	        global.soulbliss++;
	    }
	    if spirit = "Vanity" {
	        global.soulvanity++;
	    }
	    if spirit = "Loathing" {
	        global.soulloathing++;
	    }
	    if spirit = "Paranoia" {
	        global.soulparanoia++;
	    }
	    if spirit = "Despair" {
	        global.souldespair++;
	    }
	    instance_destroy();
	}

	with (Camera_Control) {
	    camX = room_width / 2;
	    camY = room_height / 2;
	    x = camX;
	    y = camY;
	}

	nextRoomX = 0;
	nextRoomY = 0;
	nextRoom = global.currentroom;

	global.soulSpawnXAdd = 0;
	global.soulSpawnYAdd = 0;

	nextRoomType = global.floor[nextRoom,0];

	if global.currentroom = nextRoom {
    
	    if nextRoomType = "Boss" || nextRoomType = "Super Boss" {
	        room_goto(Medium_Flash_Boss_Room);
	        if global.floor[nextRoom,3] = 1216 {
	            room_goto(Large_Flash_Boss_Room);
	        }
	        global.currentroom = nextRoom;
	    }
    
	    if nextRoomType = "Shop" {
	        room_goto(Medium_Shop_Room);
	        global.currentroom = nextRoom;
	    }
    
	    if nextRoomType = "Item" || nextRoomType = "Emotion Field" || nextRoomType = "Strength Field" || nextRoomType = "Vitality Field" || nextRoomType = "Essence Field" || nextRoomType = "Dexterity Field" || nextRoomType = "Perception Field" || nextRoomType = "State Field" {
	        room_goto(Medium_Item_Room);
	        global.currentroom = nextRoom;
	    }
		
		if nextRoomType = "Hope Field" || nextRoomType = "Bliss Field" || nextRoomType = "Assurance Field" || nextRoomType = "Loathing Field" || nextRoomType = "Paranoia Field" || nextRoomType = "Despair Field" {
	        room_goto(Medium_Item_Room);
	        global.currentroom = nextRoom;
	    }
    
	    if nextRoomType = "Misc Field" || nextRoomType = "Heart Field" || nextRoomType = "Minion Field" || nextRoomType = "Weapon Field"{
	        room_goto(Medium_Item_Room);
	        global.currentroom = nextRoom;
	    }
    
	    if nextRoomType = "Spawn" || nextRoomType = "Normal" {
	        room_goto(Medium_Room);
	        global.currentroom = nextRoom;
	    }
		
		if nextRoomType = "Chamber" {
	        room_goto(Chamber_Room);
	        global.currentroom = nextRoom;
	    }
		
		if nextRoomType = "State" {
	        room_goto(State_Room);
	        global.currentroom = nextRoom;
	    }
    
	    scr_Room_Change_Actions();

	}



}
