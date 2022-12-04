function scr_Wall_Form() {
	/*
	Floor_Layout_Control.Flash[global.currentroom,3] = floor(Flash[i,3] / 128) * 128;

	var si = Floor_Layout_Control.Flash[global.currentroom,3];

	global.roomSizeX = si;
	global.rommSizeY = si;
	*/

	leftMiddleX = room_width / 2 - global.roomSizeX / 2;
	leftMiddleY = room_height / 2;

	xOffset = -32;
	yOffset = 0;

	numWalls = global.roomSizeX / 64;

	initialWall = 1;

	repeat(20) {

	for(i = 0; i <= numWalls; i++) {
	    with instance_create(leftMiddleX + xOffset,leftMiddleY + yOffset,obj_The_Border) {
	        orientation = 1 * other.initialWall;
	        type = 0;
	        if (other.i = 0) {
	            orientation = 0;
	        }
	        if (other.i = 1 and orientation != 0) {
	            type = 1;
	        }
	        if (other.i = other.numWalls and orientation != 0) {
	            type = 2;
	        }
	    }

	    xOffset += 32;
	    yOffset += 32;
	}
	for(i = 0; i <= numWalls; i++) {
	    with instance_create(leftMiddleX + xOffset,leftMiddleY + yOffset,obj_The_Border) {
	        orientation = 2 * other.initialWall;
	        type = 0;
	        if (other.i = 0) {
	            orientation = 0;
	        }
	        if (other.i = 1 and orientation != 0) {
	            type = 1;
	        }
	        if (other.i = other.numWalls and orientation != 0) {
	            type = 2;
	        }
	    }

	    xOffset += 32;
	    yOffset -= 32;
	}
	//yOffset += 32;
	for(i = 0; i <= numWalls; i++) {
	    with instance_create(leftMiddleX + xOffset,leftMiddleY + yOffset,obj_The_Border) {
	        orientation = 3 * other.initialWall;
	        type = 0;
	        if (other.i = 0) {
	            orientation = 0;
	        }
	        if (other.i = 1 and orientation != 0) {
	            type = 1;
	        }
	        if (other.i = other.numWalls and orientation != 0) {
	            type = 2;
	        }
	    }

	    xOffset -= 32;
	    yOffset -= 32;
	}
	for(i = 0; i <= numWalls; i++) {
	    with instance_create(leftMiddleX + xOffset,leftMiddleY + yOffset,obj_The_Border) {
	        orientation = 4 * other.initialWall;
	        type = 0;
	        if (other.i = 0) {
	            orientation = 0;
	        }
	        if (other.i = 1 and orientation != 0) {
	            type = 1;
	        }
	        if (other.i = other.numWalls and orientation != 0) {
	            type = 2;
	        }
	    }

	    xOffset -= 32;
	    yOffset += 32;
	}

	    numWalls += 1;
	    xOffset -= 32;
	    other.initialWall = 0;

	}



}
