function scr_Adjacent_Room_Cloud() {
	
	draw_sprite(spr_Recollection_Hover_Cloud,0,x,y);

	var _leave = scr_Leave_Condition();
	var roomGoX = _leave[1]
	var roomGoY = _leave[2]

	var nextRoomX = 0;
	var nextRoomY = 0;
	var nextRoom = global.currentroom;

	var _price_string = "";
	var _recollection_string = "?";

	if roomGoX != 0 and roomGoY = 0 {
		var i = 0;
	    for(i = 0; i <= global.maxRooms; i++) {
	        if global.floor[global.currentroom,1] = global.floor[i,1] + roomGoX
	        if global.floor[global.currentroom,2] = global.floor[i,2] {
	            nextRoomX = roomGoX;
	            nextRoomY = global.floor[global.currentroom,2];
	            nextRoom = i
				if i <= global.maxRooms - global.extraRooms {
		            if global.currentchapter = 1 {
		                _recollection_string = "Enter Flash " + string(nextRoom);
		            }
		            if global.currentchapter = 2 {
		                _recollection_string = "Enter Feel " + string(nextRoom);
		            }
		            if global.currentchapter = 3 {
		                _recollection_string = "Enter Dream " + string(nextRoom);
		            }
					if global.currentchapter = 4 {
		                _recollection_string = "Enter Nightmare " + string(nextRoom);
		            }
				} else {
					var sadd = "Chamber";
					if global.floor[i,0] = "Chamber" {
					}
					if global.floor[i,0] = "State" {
						sadd = "Channel";	
					}
						if global.currentchapter = 1 {
							_recollection_string = "Enter Flash " + sadd;
						}
						if global.currentchapter = 2 {
							_recollection_string = "Enter Feel " + sadd;
						}
						if global.currentchapter = 3 {
							_recollection_string = "Enter Dream " + sadd;
						}
						if global.currentchapter = 4 {
							_recollection_string = "Enter Nightmare " + sadd;
						}
				}
	        }
	    }
	}

	if roomGoY != 0 and roomGoX = 0 {
		var i = 0;
	    for(i = 0; i <= global.maxRooms; i++) {
	        if global.floor[global.currentroom,1] = global.floor[i,1]
	        if global.floor[global.currentroom,2] = global.floor[i,2] + roomGoY {
	            nextRoomY = roomGoY;
	            nextRoomX = global.floor[global.currentroom,1];
	            nextRoom = i
	            if i <= global.maxRooms - global.extraRooms {
		            if global.currentchapter = 1 {
		                _recollection_string = "Enter Flash " + string(nextRoom);
		            }
		            if global.currentchapter = 2 {
		                _recollection_string = "Enter Feel " + string(nextRoom);
		            }
		            if global.currentchapter = 3 {
		                _recollection_string = "Enter Dream " + string(nextRoom);
		            }
					if global.currentchapter = 4 {
		                _recollection_string = "Enter Nightmare " + string(nextRoom);
		            }
				} else {
					var sadd = "Chamber";
					if global.floor[i,0] = "Chamber" {
					}
					if global.floor[i,0] = "State" {
						sadd = "Channel";	
					}
						if global.currentchapter = 1 {
							_recollection_string = "Enter Flash " + sadd;
						}
						if global.currentchapter = 2 {
							_recollection_string = "Enter Feel " + sadd;
						}
						if global.currentchapter = 3 {
							_recollection_string = "Enter Dream " + sadd;
						}
						if global.currentchapter = 4 {
							_recollection_string = "Enter Nightmare " + sadd;
						}
				}
	        }
	    }
	}
	//_recollection_string = "?";
	
	if _recollection_string != "?" {
		if instance_exists(cloud) {
			with(cloud) {
				alarm[0] = 20;
			}
		} else {
			with instance_create(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_In_Game_Recollection_Cloud) {
			    recollectionString = _recollection_string;
			    priceString = _price_string;
				
				image_alpha = global.cloudalpha;
		
				alarm[0] = 20;
		
				leave = 1;
	
				other.cloud = id;
			}
		}
	}
	



}
