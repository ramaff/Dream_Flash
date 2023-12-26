function scr_Change_Room() {
	/*
	global.soulstrengthTemp = 0;
	global.soulvitalityTemp = 0;
	global.soulessenceTemp = 0;
	global.souldexterityTemp = 0;
	global.soulperceptionTemp = 0;
	global.soulstateTemp = 0;
	*/

	global.instanceidincrementer = 1;

	global.roomdarkness = 0;

	with (obj_Soul_Flash) {
	    global.soulflash++;
	    instance_destroy();
	}
	with (obj_Soul_Feel) {
	    global.soulflash++;
	    instance_destroy();
	}
	with (obj_Soul_Dream) {
	    global.soulflash++;
	    instance_destroy();
	}
	with (obj_Soul_Nightmare) {
	    global.soulflash++;
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
	    camX = obj_Soul_Parent.x;
	    camY = obj_Soul_Parent.y;
	}

	var nextRoomX = 0;
	var nextRoomY = 0;
	var nextRoom = global.currentroom;

	//global.currentroom += 1;
	if roomGoX != 0 {
	    for(i = 0; i <= global.maxRooms; i++) {
	        if global.floor[global.currentroom,1] = global.floor[i,1] + roomGoX
	        if global.floor[global.currentroom,2] = global.floor[i,2] {
	            nextRoomX = roomGoX;
	            nextRoomY = global.floor[global.currentroom,2];
	            nextRoom = i
	        }
	    }
	}

	if roomGoY != 0 {
	    for(i = 0; i <= global.maxRooms; i++) {
	        if global.floor[global.currentroom,1] = global.floor[i,1]
	        if global.floor[global.currentroom,2] = global.floor[i,2] + roomGoY {
	            nextRoomY = roomGoY;
	            nextRoomX = global.floor[global.currentroom,1];
	            nextRoom = i
	        }
	    }
	}

	global.soulSpawnXAdd = -200 * roomGoX + 200 * roomGoY;
	global.soulSpawnYAdd = -200 * roomGoX - 200 * roomGoY;

	var nextRoomType = global.floor[nextRoom,0];

	if global.currentroom != nextRoom {
    
	    if nextRoomType = "Boss" || nextRoomType = "Super Boss" {
	        room_goto(Medium_Flash_Boss_Room);
	        //if global.floor[nextRoom,3] = 1216 {
	        //    room_goto(Large_Flash_Boss_Room);
	        //}
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
		
		if nextRoomType = "Chamber" {
	        room_goto(Chamber_Room);
	        global.currentroom = nextRoom;
	    }
		
		if nextRoomType = "State" {
	        room_goto(State_Room);
	        global.currentroom = nextRoom;
	    }
    
	    if nextRoomType = "Spawn" || nextRoomType = "Normal" {
	        room_goto(Medium_Room);
	        global.currentroom = nextRoom;
	    }
    
	    scr_Room_Change_Actions();

	}
	
	scr_Sound_Effect(snd_Soul_Teleport);



}
