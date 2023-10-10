baseDepth = 0;

roomsize = global.floor[0,3];

xv = room_width / 2;
yv = room_height / 2;
inside = 0;

xval = x - xv;
yval = y - yv;

if abs(xval) < ((global.roomSizeX / 2) - abs(yval)) and abs(yval) < ((global.roomSizeY / 2) - abs(xval)) {
    inside = 1;
}

if inside = 0 {
    image_alpha = 0;
    instance_destroy();
}

if sprite_index = spr_Flower  {
    size = 0.25 + random(0.05);
    //scr_Room_Depth(0.02);
}
if sprite_index = spr_Tree || sprite_index = spr_Snowy_Pine_Tree {
    size = 0.4 + random(0.05);
}
if sprite_index = spr_Woods_Tree {
    size = 0.275 + random(0.05);
	size = 0.4 + random(0.05);
}
if sprite_index = spr_Planet {
    size = 0.25 + random(0.05);
}
if sprite_index = spr_Cactus {
    size = 0.9 + random(0.1);
}
if sprite_index = spr_Grave_Stone || sprite_index = spr_Wooden_Grave || sprite_index = spr_Snowman {
    size = 0.5 + random(0.05);
}
if sprite_index = spr_Cave_Rocks || sprite_index = spr_Depth_Rocks  {
    size = 0.1 + random(0.05);
}
if sprite_index = spr_Room_Skull || sprite_index = spr_Busted_Skull  {
    size = 0.04 + random(0.025);
}

