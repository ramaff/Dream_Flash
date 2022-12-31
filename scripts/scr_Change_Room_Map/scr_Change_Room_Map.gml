function scr_Change_Room_Map(argument0) {
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

	scr_Collect_Income();

	with (Camera_Control) {
	    camX = obj_Soul_Parent.x;
	    camY = obj_Soul_Parent.y;
	}

	nextRoomX = 0;
	nextRoomY = 0;
	nextRoom = global.currentroom;
	
	nextRoom = argument0;

	global.soulSpawnXAdd = 0;
	global.soulSpawnYAdd = 0;

	nextRoomType = Floor_Layout_Control.Flash[nextRoom,0];

	if global.currentroom != nextRoom {
    
	    if nextRoomType = "Boss" || nextRoomType = "Super Boss" {
	        room_goto(Medium_Flash_Boss_Room);
	        //if Floor_Layout_Control.Flash[nextRoom,3] = 1216 {
	        //    room_goto(Large_Flash_Boss_Room);
	        //}
	        global.currentroom = nextRoom;
	    }
    
	    if nextRoomType = "Shop" {
	        room_goto(Medium_Shop_Room);
	        global.currentroom = nextRoom;
	    }
    
	    if nextRoomType = "Item" || nextRoomType = "Strength Field" || nextRoomType = "Vitality Field" || nextRoomType = "Essence Field" || nextRoomType = "Dexterity Field" || nextRoomType = "Perception Field" {
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



}
