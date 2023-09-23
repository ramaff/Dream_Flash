global.maxRooms = 15;
global.extraRooms = choose(1,1,2);
//global.extraRooms = 2;
if global.currentchapter = 2 {
    global.maxRooms = 15;
}
if global.currentchapter = 3 {
    global.maxRooms = 18;
}
if global.currentchapter = 4 {
    global.maxRooms = 15;
}

global.chapterRooms = global.maxRooms;
global.maxRooms += global.extraRooms;

global.strFields = 0;
global.vitFields = 0;
global.essFields = 0;
global.dexFields = 0;
global.perFields = 0;
global.staFields = 0;

global.spiritRoom = 0;
global.evilSpiritRoom = 0;

global.chaptertime = 0;

for (i = 0; i <= 99; i++) {
	for (j = 0; j <= 33; j++) {	
		global.floor[i,j] = 0;
	}
}

for (i = 0; i < 5; i++) {
	for (j = 0; j < 5; j++) {	
		miniMap[i,j] = -1;	
	}
}

nextRoomType = "Boss"
currRoomX = 0;
currRoomY = 0;
nextRoomX = 0;
nextRoomY = 0;

roomAttempt = 0;
startOver = 0;

loading = 1;

//show_debug_message("floor_layout_control in")
///show_debug_message("maxrooms: " + string(global.maxRooms))
//show_debug_message("chapterrooms: " + string(global.chapterRooms))
//show_debug_message("extrarooms: " + string(global.extraRooms))


if global.loadrun = 0 || global.doneLoading = 1 {

	for (i = 0; i <= 99; i++) {
	    global.floor[i,0] = "Spawn"; // Room Type
	    global.floor[i,1] = 0; // Map X Position
	    global.floor[i,2] = 0; // Map Y Position
	    global.floor[i,3] = 1024; // Room Size
	    global.floor[i,4] = bg_Flash_Tiles; // Room Background
	    global.floor[i,5] = 0; // Room X Offset
	    global.floor[i,6] = 0; // Room Y Offset
	    global.floor[i,7] = ""; // Boss Type or Item Type
	    global.floor[i,8] = ""; // Boss Champ or Second Item
	    global.floor[i,9] = ""; // Boss Boost or Third Item
	    for(j = 10; j <= 39; j++) {
	        global.floor[i,j] = "";
	    }
		global.floor[i,21] = obj_Wall_Watcher;
		global.floor[i,22] = 0;
		global.floor[i,23] = 0;
		global.floor[i,24] = 0;
		global.floor[i,25] = obj_Wall_Watcher;
		global.floor[i,26] = obj_Wall_Watcher;
		global.floor[i,27] = 0;
		global.floor[i,28] = obj_Wall_Watcher;
		global.floor[i,29] = 0;
		global.floor[i,30] = 0;
		global.floor[i,31] = obj_Wall_Watcher;
		global.floor[i,32] = 0;
		global.floor[i,33] = 0;
	}

	// currRoom = 
	// currRoomType = 
	nextRoomType = "Boss"
	currRoomX = 0;
	currRoomY = 0;
	nextRoomX = 0;
	nextRoomY = 0;

	roomAttempt = 0;
	startOver = 0;

	loading = 1;

	// Floor Layout Generation
	scr_Floor_Position_Generation();

	// Floor Room Generation
	//scr_Floor_Generation();

}

