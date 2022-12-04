fieldType = Floor_Layout_Control.Flash[global.currentroom,4];

var hbase = (room_width / 2) - (global.roomSizeX / 2);
var vbase = (room_height / 2) - (global.roomSizeY / 2);

if fieldType = bg_Grass_Tiles {
    repeat(18) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Grass;
            image_index = irandom(2);
            image_speed = 0;
            size = 0.6 + random(0.05);
			scr_Field_Teleport()
        }
    }
	repeat(12) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Floor_Flower;
            size = 0.5 + random(0.05);
			scr_Field_Teleport()
        }
    }
}

if fieldType = bg_Light_Forest_Tiles {
    repeat(18) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_LF_Grass;
            image_index = irandom(2);
            image_speed = 0;
			size = 0.6 + random(0.05);
            //size = 1;
        }
    }
    repeat(5) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Tree;
            image_index = irandom(1);
            image_speed = 0;
            size = 0.5 + random(0.05);
        }
    }
	repeat(0) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Shrub;
            image_index = irandom(1);
            image_speed = 0;
            size = 0.5 + random(0.05);
        }
    }
}

if fieldType = bg_Snowy_Tiles {
    repeat(1) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Snowman;
            image_index = irandom(0);
            image_speed = 0;
            size = 0.5 + random(0.05);
        }
    }
    repeat(5) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Snowy_Pine_Tree;
            image_index = irandom(1);
            image_speed = 0;
            size = 0.5 + random(0.05);
        }
    }
}

if fieldType = bg_Forest_Tiles || fieldType = bg_Deep_Woods_Tiles {
    repeat(22) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Forest_Grass;
			if other.fieldType = bg_Deep_Woods_Tiles {
				sprite_index = spr_Deep_Woods_Grass;
			}
            image_index = irandom(2);
            image_speed = 0;
            size = 0.6 + random(0.05);
        }
    }
    repeat(7) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Woods_Tree;
            image_index = irandom(4);
            image_speed = 0;
            size = 0.5 + random(0.05);
        }
    }
	repeat(2) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Shrub;
            image_index = irandom(1);
            image_speed = 0;
            size = 0.5 + random(0.05);
        }
    }
}

if fieldType = bg_Desert_Tiles {
    repeat(7) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Cactus;
            image_index = irandom(3);
            image_speed = 0;
            size = 0.5 + random(0.05);
        }
    }
}

if fieldType = bg_Graveyard_Tiles {
    repeat(0) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Wooden_Grave;
            image_index = irandom(1);
            image_speed = 0;
            size = 0.5 + random(0.05);
        }
    }
    repeat(8) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Grave_Stone;
            image_index = irandom(1);
            image_speed = 0;
            size = 0.5 + random(0.05);
        }
    }
    repeat(2) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Room_Skull;
            image_index = irandom(1);
            image_speed = 0;
            size = 0.04 + random(0.025);
        }
    }
    repeat(2) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Busted_Skull;
            image_index = irandom(1);
            image_speed = 0;
            size = 0.04 + random(0.025);
        }
    }
}

if fieldType = bg_Space_Tiles {
    repeat(30) {
        instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Flash_Sparkle);
    }
    repeat(6) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Planet;
            image_index = irandom(1);
            image_speed = 0;
            size = 0.25 + random(0.05);
        }
    }
}

if fieldType = bg_Cave_Tiles {
    repeat(45) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Cave_Rocks;
            image_index = irandom(3);
            image_speed = 0;
            size = 1;
        }
    }
}

if fieldType = bg_Depths_Tiles {
    repeat(45) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Depth_Rocks;
            image_index = irandom(1);
            image_speed = 0;
            size = 1
        }
    }
    repeat(4) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Room_Skull;
            image_index = irandom(1);
            image_speed = 0;
            size = 0.04 + random(0.025);
        }
    }
    repeat(4) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Busted_Skull;
            image_index = irandom(1);
            image_speed = 0;
            size = 0.04 + random(0.025);
        }
    }
}

if fieldType = bg_Crying_Woods_Tiles {
    /*
    repeat(18) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Grass;
            image_index = irandom(2);
            image_speed = 0;
            size = 0.6 + random(0.05);
			scr_Field_Teleport()
        }
    }
	*/
	repeat(4) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Crying_Tree;
            size = 0.5 + random(0.05);
			scr_Field_Teleport()
        }
    }
	repeat(8) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Watching_Flower;
            size = 1;
			size = 0.5 + random(0.05);
			//size = 1;
			scr_Field_Teleport()
        }
    }
}

if fieldType = bg_Shroom_Tiles {
    /*
    repeat(18) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Grass;
            image_index = irandom(2);
            image_speed = 0;
            size = 0.6 + random(0.05);
			scr_Field_Teleport()
        }
    }
	*/
	repeat(12) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Shroom;
            size = 1;
			size = 0.5 + random(0.05);
			//size = 1;
			scr_Field_Teleport()
        }
    }
	repeat(8) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Watching_Flower;
            size = 1;
			size = 0.5 + random(0.05);
			//size = 1;
			scr_Field_Teleport()
        }
    }
}

if fieldType = bg_Patch_Tiles {
	/*
    repeat(18) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Grass;
            image_index = irandom(2);
            image_speed = 0;
            size = 0.6 + random(0.05);
			scr_Field_Teleport()
        }
    }
	*/
	repeat(12) {
        with instance_create(hbase + random(global.roomSizeX),vbase + random(global.roomSizeY),obj_Field_Element) {
            sprite_index = spr_Pumpkin;
            size = 0.5 + random(0.05);
			//size = 1;
			scr_Field_Teleport()
        }
    }
}
