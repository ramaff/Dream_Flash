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
	lightsize = 1;
}

var h2 = 0;

properSize = global.floor[global.currentroom,3];
properBG = global.floor[global.currentroom,4];

var _bg = sprite_get_name(properBG) 
		
var _large_bgs = {
	"spr_flash_base_g": spr_flash_base_g_xl,
	"spr_flash_diagonal_brick_g": spr_flash_diagonal_brick_g_xl,
	"spr_flash_marble_g": spr_flash_marble_brick_g_xl,
	"spr_feel_base_g": spr_feel_base_g_xl,
	"spr_feel_marble_g": spr_feel_marble_g_xl,
	"spr_feel_brick_g": spr_feel_brick_g_xl,
	"spr_dream_base_g": spr_dream_base_g_xl,
	"spr_dream_brick_g": spr_dream_brick_g_xl,
	"spr_nightmare_base_g": spr_nightmare_base_g_xl,
	"spr_nightmare_brick_g": spr_nightmare_brick_g_xl,
	"spr_dungeon_brick_g": spr_dungeon_brick_g_xl,
}
		
if global.floor[global.currentroom, 3] >= 1280 and variable_struct_exists(_large_bgs, _bg) {
	global.floor[global.currentroom,4] = variable_struct_get(_large_bgs, _bg);
}

properTileSet = ts_Flash_Tiles;
properTileFall = ts_Flash_Fall_Out;

xx = (room_width / 2);
yy = (room_height / 2);

bg_xx = (room_width / 2 - 600) - 200 + random(400);
bg_yy = (room_height / 2 - 400) - 200 + random(400);

var tilesize = 64;


deepest_layer = instance_create(x, y, obj_background_drawing);
deepest_layer.depth = 100000000;

deeper_layer = instance_create(x, y, obj_background_drawing);
deeper_layer.depth = 1000000;

deep_layer = instance_create(x, y, obj_background_drawing);
deep_layer.depth = 10000;

//forward_layer = instance_create(x, y, obj_background_drawing);
//forward_layer.depth = -100;
	
var roomBG = global.floor[global.currentroom,4];
var bgType = "Flash";

ground = roomBG
	
if global.currentchapter = 2 {
	bgType = "Feel";
}
	
if global.currentchapter = 3 {
	bgType = "Dream";	
}
	
if global.currentchapter = 4 {
	bgType = "Nightmare";	
}

	
if roomBG = spr_flash_marble_g || roomBG = spr_flash_diagonal_brick_g || roomBG = spr_shop_g || roomBG = spr_chamber_g || roomBG = spr_channel_g {
	deepest_layer.sprite_index = spr_flash_night_bg;
	
	if roomBG = spr_flash_marble_g {
		deep_layer.sprite_index = spr_flash_marble_front_bg;
	}
	
	deepest_layer.sprite_index = spr_dream_night_bg_test;
	
} else if roomBG = spr_feel_brick_g || roomBG = spr_feel_brick_g_xl || roomBG = spr_feel_marble_g || roomBG = spr_dream_marble_g {
	deepest_layer.sprite_index = spr_feel_night_bg
	deep_layer.sprite_index = spr_flash_marble_front_bg;
	deepest_layer.sprite_index = spr_dream_night_bg_test;
} else if roomBG = spr_dream_brick_g {
	deepest_layer.sprite_index = spr_dream_night_bg_test;
} else if bgType = "Flash" {
	deepest_layer.sprite_index = spr_flash_day_bg
	deep_layer.sprite_index = spr_flash_day_front_bg;
	deeper_layer.sprite_index =  spr_star_lights_bg;
	//forward_layer.sprite_index = spr_flash_day_lights;
} else if bgType = "Feel" {
	deepest_layer.sprite_index = spr_feel_day_bg;
	deep_layer.sprite_index = spr_feel_day_front_bg;
} else if bgType = "Dream" {
	deepest_layer.sprite_index = spr_dream_day_bg;
	deep_layer.sprite_index = spr_dream_day_front_bg;
	//deepest_layer.sprite_index = spr_Mental_Background_Dream;
} else if bgType = "Nightmare" {
	deepest_layer.sprite_index = spr_Mental_Background_Nightmare;
}

