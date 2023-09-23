function scr_Hazard_Form() {
	var centerX = room_width / 2;
	var centerY = room_height / 2;
	var hazNum = global.floor[global.currentroom,27];
	var fieldBG = global.floor[global.currentroom,4];

	var roomEdge = (global.roomSizeX / 2) / 64;

	var hazardCount = 99;

	if hazNum != 0 {

	for(i = 0; i < hazardCount; i++) {
		hazArray[i,0] = "Null";
		hazArray[i,1] = centerX;
		hazArray[i,2] = centerY;
	}

	if fieldBG = bg_Dungeon_Tiles || fieldBG = bg_Flash_Dungeon_Tiles || fieldBG = bg_Feel_Dungeon_Tiles || fieldBG = bg_Dream_Dungeon_Tiles {
	
		switch(hazNum) {
	
			case(1): // Quadrant Gap Spikes

			hazArray[0,0] = "Spike";
			hazArray[0,1] = 0;
			hazArray[0,2] = 0;
			for(k = 0; k <= (roomEdge / 2); k++) {
				hazArray[4*k+4,0] = "Spike";
				hazArray[4*k+4,1] = roomEdge - (2*k + 1);
				hazArray[4*k+4,2] = 0;
				hazArray[4*k+1,0] = "Spike";
				hazArray[4*k+1,1] = -(roomEdge - (2*k + 1));
				hazArray[4*k+1,2] = 0;
				hazArray[4*k+2,0] = "Spike";
				hazArray[4*k+2,1] = 0;
				hazArray[4*k+2,2] = roomEdge - (2*k + 1);
				hazArray[4*k+3,0] = "Spike";
				hazArray[4*k+3,1] = 0;
				hazArray[4*k+3,2] = -(roomEdge - (2*k + 1));
			}
			break;
	
			case(2): // Spread Spikes

			hazArray[0,0] = "Spike";
			hazArray[0,1] = 0;
			hazArray[0,2] = 0;
			for(k = 0; k <= (roomEdge / 4); k++) {
				hazArray[8*k+4,0] = "Spike";
				hazArray[8*k+4,1] = roomEdge - (4*k + 1);
				hazArray[8*k+4,2] = 0;
				hazArray[8*k+1,0] = "Spike";
				hazArray[8*k+1,1] = -(roomEdge - (4*k + 1));
				hazArray[8*k+1,2] = 0;
				hazArray[8*k+2,0] = "Spike";
				hazArray[8*k+2,1] = 0;
				hazArray[8*k+2,2] = roomEdge - (4*k + 1);
				hazArray[8*k+3,0] = "Spike";
				hazArray[8*k+3,1] = 0;
				hazArray[8*k+3,2] = -(roomEdge - (4*k + 1));
		
			}
	
			for(k = 0; k <= (roomEdge / 8); k++) {
				hazArray[8*k+5,0] = "Spike";
				hazArray[8*k+5,1] = (roomEdge - (8*k + 1)) / 2;
				hazArray[8*k+5,2] = (roomEdge - (8*k + 1)) / 2;
				hazArray[8*k+6,0] = "Spike";
				hazArray[8*k+6,1] = -(roomEdge - (8*k + 1)) / 2;
				hazArray[8*k+6,2] = (roomEdge - (8*k + 1)) / 2;
				hazArray[8*k+7,0] = "Spike";
				hazArray[8*k+7,1] = (roomEdge - (8*k + 1)) / 2;
				hazArray[8*k+7,2] = -(roomEdge - (8*k + 1)) / 2;
				hazArray[8*k+8,0] = "Spike";
				hazArray[8*k+8,1] = -(roomEdge - (8*k + 1)) / 2;
				hazArray[8*k+8,2] = -(roomEdge - (8*k + 1)) / 2;
			}
			break;

	
			case(3): // Outline Spikes

			for(k = 0; k <= (roomEdge - 1); k++) {
				hazArray[4*k+4,0] = "Spike";
				hazArray[4*k+4,1] = roomEdge - (k + 1);
				hazArray[4*k+4,2] = 0 - k;
				hazArray[4*k+1,0] = "Spike";
				hazArray[4*k+1,1] = -(roomEdge - (k + 1));
				hazArray[4*k+1,2] = 0 + k;
				hazArray[4*k+2,0] = "Spike";
				hazArray[4*k+2,1] = 0 + k;
				hazArray[4*k+2,2] = roomEdge - (k + 1);
				hazArray[4*k+3,0] = "Spike";
				hazArray[4*k+3,1] = 0 - k;
				hazArray[4*k+3,2] = -(roomEdge - (k + 1));
			}
			break;
	
			case(4): // Quadrant Spikes
	
			hazArray[0,0] = "Spike";
			hazArray[0,1] = 0;
			hazArray[0,2] = 0;
			for(k = 0; k <= roomEdge; k++) {
				hazArray[4*k+4,0] = "Spike";
				hazArray[4*k+4,1] = roomEdge - (k + 1);
				hazArray[4*k+4,2] = 0;
				hazArray[4*k+1,0] = "Spike";
				hazArray[4*k+1,1] = -(roomEdge - (k + 1));
				hazArray[4*k+1,2] = 0;
				hazArray[4*k+2,0] = "Spike";
				hazArray[4*k+2,1] = 0;
				hazArray[4*k+2,2] = roomEdge - (k + 1);
				hazArray[4*k+3,0] = "Spike";
				hazArray[4*k+3,1] = 0;
				hazArray[4*k+3,2] = -(roomEdge - (k + 1));
			}
			break;

		}
	}

	for(j = 0; j < hazardCount; j++) {
		with instance_create(centerX + hazArray[j,1] * 64, centerY + hazArray[j,2] * 64, obj_Harmful_Field_Element) {
		
			hazardType = other.hazArray[other.j,0];
			if hazardType = "Null" {
				instance_destroy();	
			}
			if hazardType = "Spike" {
				sprite_index = spr_Spike;
			}
		}
	}

	}
	/*
	with instance_create(centerX, centerY + (roomEdge - 1) * 64, obj_Harmful_Field_Element) {
	
		sprite_index = spr_Spike;	
		hazardType = "Spike";
	}
	with instance_create(centerX - (roomEdge - 1) * 64, centerY, obj_Harmful_Field_Element) {
	
		sprite_index = spr_Spike;	
		hazardType = "Spike";
	}
	with instance_create(centerX, centerY - (roomEdge - 1) * 64, obj_Harmful_Field_Element) {
	
		sprite_index = spr_Spike;	
		hazardType = "Spike";
	}
	*/




}
