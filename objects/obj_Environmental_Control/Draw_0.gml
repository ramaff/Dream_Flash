/*

xx = (room_width - properSize) / 2;
yy = (room_height - properSize) / 2;

draw_tilemap(global.backt,xx,yy);

/*
if room = Large_Flash_Boss_Room {
    if global.currentchapter = 1 {
    draw_background_part(bg_Big_Flash,0,0,1216,1216,576,128);
    }
    if global.currentchapter = 2 {
    draw_background_part(bg_Big_Feel,0,0,1216,1216,576,128);
    }
    exit;
} */

/*
properSize = Floor_Layout_Control.Flash[global.currentroom,3];
properBG = Floor_Layout_Control.Flash[global.currentroom,4];

if global.currentchapter = 1 and properBG = bg_Flash {
    if properSize > 1329 {
        properBG = bg_Big_Flash;
        properSize = 1664;
    } else {
        properSize = 1329;
    }
}
if global.currentchapter = 2 and properBG = bg_Feel {
    if properSize > 1329 {
        properBG = bg_Big_Feel;
        properSize = 1664;
    } else {
        properSize = 1329;
    }
}
if global.currentchapter = 3 and properBG = bg_Dream {
    if properSize > 1329 {
        properBG = bg_Big_Dream;
        properSize = 1644;
    } else {
        properSize = 1329;
    }
}
if global.currentchapter = 4 and properBG = bg_Nightmare {
    if properSize > 992 {
        properBG = bg_Nightmare;
        properSize = 1216;
    } else {
        properSize = 1329;
    }
}

if properBG = bg_Flower_Fields {
    properBG = bg_Flower_Fields;
    if properSize > 1329 {
        properSize = 1644;
        properBG = bg_Flower_Fields;
    } else {
        properSize = 1329;
    }
}

if properBG = bg_Dream_Alt {
    properBG = bg_Dream_Alt;
    if properSize > 1329 {
        properBG = bg_Big_Dream_Alt;
        properSize = 1644;
    } else {
        properSize = 1329;
    }
}

if properBG = bg_Space {
    properBG = bg_Space;
    if properSize > 1329 {
        properBG = bg_Big_Space;
        properSize = 1644;
    } else {
        properSize = 1329;
    }
}

if properBG = bg_Depths {
    properBG = bg_Depths;
    if properSize > 1329 {
        properBG = bg_Big_Depths;
        properSize = 1644;
    } else {
        properSize = 1329;
    }
}

if properBG = bg_Desert || properBG = bg_Safe_Room || properBG = bg_River {
    properSize = 1329;
}

if properBG = bg_Snowy_Fields {
    properSize = 1348;
}

if properBG = bg_Caves {
    properSize = 1329;
}

if properBG = bg_Forest || properBG = bg_Deep_Woods || properBG = bg_Graveyard {
    properSize = 1329;
}

if properBG = bg_Light_Forest {
    properSize = 1329;
}

var stretchb = 0;
if Floor_Layout_Control.Flash[global.currentroom,4] > properSize {
	stretchb = 1;
}
stretchb = 1;

if stretchb = 0 {
	draw_background_part(properBG,0,0,properSize,properSize,room_width/2 - properSize/2,room_height/2 - properSize/2);
} else {
	//draw_background_part(properBG,0,0,Floor_Layout_Control.Flash[global.currentroom,4],Floor_Layout_Control.Flash[global.currentroom,4],room_width/2 - properSize/2,room_height/2 - properSize/2);
	global.backl = layer_create(10000);
	global.envr = layer_background_create(global.backl, properBG);
	layer_background_visible(global.envr, true);
	layer_x(global.backl,(room_width - properSize) / 2);
	layer_y(global.backl,(room_height - properSize) / 2);
}

/* */
/*  */
