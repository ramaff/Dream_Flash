if global.currentchapter = 1 {
instance_create(0,0,obj_Sparkle_Emitter);
//draw_background_part(bg_Flash,0,0,992,992,528,80);
}
if global.currentchapter = 2 {
instance_create(0,0,obj_Heart_Emitter);
//draw_background_part(bg_Feel,0,0,992,992,528,80);
}
if global.currentchapter = 3 {
instance_create(0,0,obj_Dream_Emitter);
//draw_background_part(bg_Dream,0,0,992,992,528,80);
}
if global.currentchapter = 4 {
instance_create(0,0,obj_Sparkle_Emitter);
//draw_background_part(bg_Nightmare,0,0,992,992,528,80);
}
instance_create(x,y,obj_Charge_Indicator);
with instance_create(room_width / 2,room_height / 2,obj_LightS) {
    target = obj_Soul_Parent;
}

//instance_create(x,y,obj_light_renderer);

instance_create(room_width / 2, room_height / 2, obj_Flash_Overlay);

scr_Mental_Background();

var h2 = 0;

properSize = global.floor[global.currentroom,3];
properBG = global.floor[global.currentroom,4];

properTileSet = ts_Flash_Tiles;
properTileFall = ts_Flash_Fall_Out;

if global.currentchapter = 1 and properBG = bg_Flash_Tiles {
	properTileSet = ts_Flash_Tiles;
}
if global.currentchapter = 2 and properBG = bg_Feel_Tiles {
	properTileSet = ts_Feel_Tiles;
	properTileFall = ts_Feel_Fall_Out;
}
if global.currentchapter = 3 and properBG = bg_Dream_Tiles {
	properTileSet = ts_Dream_Tiles;
	properTileFall = ts_Dream_Fall_Out;
}
if global.currentchapter = 4 and properBG = bg_Nightmare_Tiles {
	properTileSet = ts_Nightmare_Tiles;
	properTileFall = ts_Nightmare_Fall_Out;
}

if properBG = bg_Grass_Tiles || properBG = bg_River {
    properTileSet = ts_Grass_Tiles;
	properTileFall = ts_Grass_Fall_Out;
}

if properBG = bg_Dream_Alt_Tiles {
    properTileSet = ts_Dream_Alt_Tiles;
	properTileFall = ts_Dream_Alt_Fall_Out;
}


if properBG = bg_Space_Tiles {
    properTileSet = ts_Space_Tiles;
	properTileFall = ts_Space_Fall_Out;
}

if properBG = bg_Depths_Tiles {
    properTileSet = ts_Depths_Tiles;
	properTileFall = ts_Depths_Fall_Out;
}

if properBG = bg_Shroom_Tiles {
    properTileSet = ts_Shroom_Tiles;
	properTileFall = ts_Shroom_Fall_Out;
}

if properBG = bg_Patch_Tiles {
    properTileSet = ts_Patch_Tiles;
	properTileFall = ts_Patch_Fall_Out;
}

if properBG = bg_Crying_Woods_Tiles {
    properTileSet = ts_Crying_Woods_Tiles;
	properTileFall = ts_Crying_Woods_Fall_Out;
}

if properBG = bg_Safe_Room_Tiles {
    properTileSet = ts_Safe_Room_Tiles;
	properTileFall = ts_Safe_Fall_Out;
	h2 = 1;
}

if properBG = bg_Dungeon_Tiles {
	properTileSet = ts_Dungeon_Tiles;
	properTileFall = ts_Dungeon_Fall_Out;
}

if properBG = bg_Dungeon_Tiles_Test {
	properTileSet = ts_Dungeon_Tiles_Test;
	properTileFall = ts_Dungeon_Fall_Out;
	//h2 = 1;
}

if properBG = bg_Flash_Dungeon_Tiles {
	properTileSet = ts_Flash_Dungeon_Tiles;
	properTileFall = ts_Flash_Dungeon_Fall_Out;
}

if properBG = bg_Feel_Dungeon_Tiles {
	properTileSet = ts_Feel_Dungeon_Tiles;
	properTileFall = ts_Feel_Dungeon_Fall_Out;
}

if properBG = bg_Dream_Dungeon_Tiles {
	properTileSet = ts_Dream_Dungeon_Tiles;
	properTileFall = ts_Dream_Dungeon_Fall_Out;
}

if properBG = bg_Nightmare_Dungeon_Tiles {
	properTileSet = ts_Nightmare_Dungeon_Tiles;
	properTileFall = ts_Nightmare_Dungeon_Fall_Out;
}

if properBG = bg_Desert_Tiles {
	properTileSet = ts_Desert_Tiles;
	properTileFall = ts_Desert_Fall_Out;
}

if properBG = bg_Snowy_Tiles {
	properTileSet = ts_Snowy_Tiles;
	properTileFall = ts_Snowy_Fall_Out;
}

if properBG = bg_Cave_Tiles {
    properTileSet = ts_Caves_Tiles;
	properTileFall = ts_Caves_Fall_Out;
}

if properBG = bg_Forest_Tiles {
    properTileSet = ts_Forest_Tiles;
	properTileFall = ts_Forest_Fall_Out;
	h2 = 1;
}

if properBG = bg_Light_Forest_Tiles {
    properTileSet = ts_Light_Forest_Tiles;
	properTileFall = ts_Light_Forest_Fall_Out;
}

if properBG = bg_Deep_Woods_Tiles {
    properTileSet = ts_Deep_Woods_Tiles;
	properTileFall = ts_Deep_Woods_Fall_Out;
}

if properBG = bg_Graveyard_Tiles {
    properTileSet = ts_Graveyard_Tiles;
	properTileFall = ts_Graveyard_Fall_Out;
}

if properBG = bg_Mind_Chamber_Tiles {
    properTileSet = ts_Mind_Chamber_Tiles;
	properTileFall = ts_Mind_Chamber_Fall_Out;
	h2 = 1;
}

if properBG = bg_State_Tiles {
	properTileSet = ts_State_Tiles;
	properTileFall = ts_State_Fall_Out;
}

//texture_set_interpolation(false);

var stretchb = 0;
if global.floor[global.currentroom,3] > properSize {
	stretchb = 1;
}
//stretchb = 1;

xx = (room_width / 2 - properSize / 2);
yy = (room_height / 2 - properSize / 2);

var tilesize = 64;

//if stretchb = 0 {
	//draw_background_part(properBG,0,0,properSize,properSize,room_width/2 - properSize/2,room_height/2 - properSize/2);
global.backl = layer_create(10000);
//global.envr = layer_background_create(global.backl, properBG);
if properTileSet = ts_Dream_Tiles {
	global.backt = layer_tilemap_create(global.backl, xx, yy, properTileSet, properSize / tilesize, (properSize / tilesize) + 1);
} else {
	global.backt = layer_tilemap_create(global.backl, xx, yy, properTileSet, properSize / tilesize, properSize / tilesize);
	global.backf = layer_tilemap_create(global.backl, xx, yy, properTileFall, (properSize / tilesize), (properSize / tilesize) + 2);
}
var imid = (properSize / tilesize) / 2;
var imiddown = imid - 1
var jmid = imid - 1;

//var d1 = 1;
//var d2 = 2;

var totalTileHeight = (properSize / tilesize)

if properTileSet = ts_Dream_Tiles {
	for (var j = 0; j < totalTileHeight; j++) {
		for (var i = 0; i < totalTileHeight; i++) {
			var tileframe = 1;
			if j > jmid {
				 if i = imiddown {
					tilemap_set(global.backt, 8, i, j);
					tilemap_set(global.backt, 12, i, j+1);
				} else if i = imid {
					tilemap_set(global.backt, 11, i, j);
					tilemap_set(global.backt, 15, i, j+1);
				} else if (i > imiddown and i < imid) {
					if i <= jmid {
						tilemap_set(global.backt, 9, i, j);	
					} else {
						tilemap_set(global.backt, 10, i, j);	
					}
				}
			} else {
				if i = imiddown {
					tilemap_set(global.backt, 1, i, j);
				} else if i = imid {
					tilemap_set(global.backt, 2, i, j);
				} else if (i > imiddown and i < imid) {
					if i <= jmid {
						tilemap_set(global.backt, 5, i, j);	
					} else {
						tilemap_set(global.backt, 6, i, j);	
					}
				}
			}
		}
		if j < jmid {
			imid++;
			imiddown--;
		} if j > jmid {
			imid--;
			imiddown++;
		}
	}
} else {
	for (var j = 0; j < (properSize / tilesize); j++) {
		for (var i = 0; i < (properSize / tilesize); i++) {
			var tileframe = 1;
			if j > jmid {
				if i = imiddown {
					if h2 = 1 {
						if i mod 2 = 0 {
							tilemap_set(global.backf, 1, i, j + 0);
							tilemap_set(global.backf, 4, i, j + 1);
							tilemap_set(global.backt, 6, i, j);
						} else {
							tilemap_set(global.backf, 1, i, j + 0);
							tilemap_set(global.backf, 4, i, j + 1);
							tilemap_set(global.backt, 8, i, j);
						}
					} else {
						tilemap_set(global.backf, 1, i, j + 0);
						tilemap_set(global.backf, 4, i, j + 1);
						tilemap_set(global.backt, 4, i, j);
					}
				} else if i = imid {
					if h2 = 1 {
						if i mod 2 = 0 {
							tilemap_set(global.backf, 2, i, j + 0);
							tilemap_set(global.backf, 5, i, j + 1);
							tilemap_set(global.backt, 7, i, j);
						} else {
							tilemap_set(global.backf, 2, i, j + 0);
							tilemap_set(global.backf, 5, i, j + 1);
							tilemap_set(global.backt, 9, i, j);
						}
					} else {
						tilemap_set(global.backf, 2, i, j + 0);
						tilemap_set(global.backf, 5, i, j + 1);
						tilemap_set(global.backt, 5, i, j);
					}
				} else if (i > imiddown and i < imid) {
					tileframe = 3;
					if h2 = 1 {
						tileframe = 5	
					}
					tilemap_set(global.backt, tileframe, i, j);	
					if h2 = 1 {
						tilemap_set(global.backt, tileframe * 2, i+1, j);	
						i++;
					}
				}
			} else {
				if i = imiddown {
					if h2 = 1 {
						if i mod 2 = 0 {
							tilemap_set(global.backt, 1, i, j);
						} else {
							tilemap_set(global.backt, 3, i, j);
						}
					} else {
						tilemap_set(global.backt, 1, i, j);
					}
					//tilemap_set(global.backf, 1, i, j + 1);
				} else if i = imid {
					if h2 = 1 {
						if i mod 2 = 0 {
							tilemap_set(global.backt, 2, i, j);
						} else {
							tilemap_set(global.backt, 4, i, j);
						}
					} else {
						tilemap_set(global.backt, 2, i, j);
					}
					//tilemap_set(global.backf, 2, i, j + 1);
				} else if (i > imiddown and i < imid) {
					tileframe = 3;
					if h2 = 1 {
						tileframe = 5	
					}
					tilemap_set(global.backt, tileframe, i, j);	
					if h2 = 1 {
						tilemap_set(global.backt, tileframe * 2, i+1, j);	
						i++;
					}
				}
			}
		}
		if j < jmid {
			imid++;
			imiddown--;
		} if j > jmid {
			imid--;
			imiddown++;
		} else {
			//	
		}
	}
}
	
	/*
	//layer_background_visible(global.envr, true);
	//layer_x(global.backl,(room_width - properSize) / 2);
	//layer_y(global.backl,(room_height - properSize) / 2);
} else {
	//draw_background_part(properBG,0,0,global.floor[global.currentroom,4],global.floor[global.currentroom,4],room_width/2 - properSize/2,room_height/2 - properSize/2);
	global.backl = layer_create(10000);
	global.envr = layer_background_create(global.backl, properBG);
	//global.backt = layer_tilemap_create(global.backl, 0, 0, bg_Flassh_tileset, 16, 32);
	/*
	layer_background_visible(global.envr, true);
	layer_x(global.backl,(room_width - global.floor[global.currentroom,3]) / 2);
	layer_y(global.backl,(room_height - global.floor[global.currentroom,3]) / 2);
	
	layer_background_xscale(global.envr,global.floor[global.currentroom,3] / properSize);
	layer_background_yscale(global.envr,global.floor[global.currentroom,3] / properSize);
	
}
*/

//texture_set_interpolation(true);