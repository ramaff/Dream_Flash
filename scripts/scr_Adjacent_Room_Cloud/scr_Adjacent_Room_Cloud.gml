function scr_Adjacent_Room_Cloud() {
	//draw_self();
	//Print_DF(string(object_get_name(id)), 6);
	
	draw_sprite(spr_Recollection_Hover_Cloud,0,x,y);

	scr_Leave_Condition();

	nextRoomX = 0;
	nextRoomY = 0;
	nextRoom = global.currentroom;

	priceString = "";
	recollectionString = "?";

	if roomGoX != 0 and roomGoY = 0 {
	    for(i = 0; i <= global.maxRooms; i++) {
	        if global.floor[global.currentroom,1] = global.floor[i,1] + roomGoX
	        if global.floor[global.currentroom,2] = global.floor[i,2] {
	            nextRoomX = roomGoX;
	            nextRoomY = global.floor[global.currentroom,2];
	            nextRoom = i
				if i <= global.maxRooms - global.extraRooms {
		            if global.currentchapter = 1 {
		                recollectionString = "Enter Flash " + string(nextRoom);
		            }
		            if global.currentchapter = 2 {
		                recollectionString = "Enter Feel " + string(nextRoom);
		            }
		            if global.currentchapter = 3 {
		                recollectionString = "Enter Dream " + string(nextRoom);
		            }
					if global.currentchapter = 4 {
		                recollectionString = "Enter Nightmare " + string(nextRoom);
		            }
				} else {
					var sadd = "Chamber";
					if global.floor[i,0] = "Chamber" {
					}
					if global.floor[i,0] = "State" {
						sadd = "Channel";	
					}
						if global.currentchapter = 1 {
							recollectionString = "Enter Flash " + sadd;
						}
						if global.currentchapter = 2 {
							recollectionString = "Enter Feel " + sadd;
						}
						if global.currentchapter = 3 {
							recollectionString = "Enter Dream " + sadd;
						}
						if global.currentchapter = 4 {
							recollectionString = "Enter Nightmare " + sadd;
						}
				}
	        }
	    }
	}

	if roomGoY != 0 and roomGoX = 0 {
	    for(i = 0; i <= global.maxRooms; i++) {
	        if global.floor[global.currentroom,1] = global.floor[i,1]
	        if global.floor[global.currentroom,2] = global.floor[i,2] + roomGoY {
	            nextRoomY = roomGoY;
	            nextRoomX = global.floor[global.currentroom,1];
	            nextRoom = i
	            if i <= global.maxRooms - global.extraRooms {
		            if global.currentchapter = 1 {
		                recollectionString = "Enter Flash " + string(nextRoom);
		            }
		            if global.currentchapter = 2 {
		                recollectionString = "Enter Feel " + string(nextRoom);
		            }
		            if global.currentchapter = 3 {
		                recollectionString = "Enter Dream " + string(nextRoom);
		            }
					if global.currentchapter = 4 {
		                recollectionString = "Enter Nightmare " + string(nextRoom);
		            }
				} else {
					var sadd = "Chamber";
					if global.floor[i,0] = "Chamber" {
					}
					if global.floor[i,0] = "State" {
						sadd = "Channel";	
					}
						if global.currentchapter = 1 {
							recollectionString = "Enter Flash " + sadd;
						}
						if global.currentchapter = 2 {
							recollectionString = "Enter Feel " + sadd;
						}
						if global.currentchapter = 3 {
							recollectionString = "Enter Dream " + sadd;
						}
						if global.currentchapter = 4 {
							recollectionString = "Enter Nightmare " + sadd;
						}
				}
	        }
	    }
	}
	//recollectionString = "?";
	
	if recollectionString != "?" {
		with instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_Recollection_Cloud) {
		    recollectionString = other.recollectionString;
		    priceString = other.priceString;
		}
	}
	



}
